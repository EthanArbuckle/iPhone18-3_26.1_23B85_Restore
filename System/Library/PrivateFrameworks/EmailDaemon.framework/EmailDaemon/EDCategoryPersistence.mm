@interface EDCategoryPersistence
+ (OS_os_log)log;
+ (id)categoryForResultRow:(id)a3;
+ (id)tablesAndForeignKeysToResolve:(id *)a3 associationsToResolve:(id *)a4;
+ (void)addCategoryColumnsToMessagesSelectComponent:(id)a3 globalMessagesSelectComponent:(id)a4 businessAddressesSelectComponent:(id)a5;
+ (void)initializeCategorizationVersion:(id)a3;
- (BOOL)persistCategorizationResult:(id)a3 forGlobalID:(int64_t)a4 categorizationVersion:(int64_t)a5 connection:(id)a6;
- (EDCategoryPersistence)initWithDatabase:(id)a3 hookResponder:(id)a4;
- (id)modelAnalyticsForMessage:(int64_t)a3;
- (id)requestProtectedDatabaseBackgroundProcessingForDuration:(double)a3 error:(id *)a4;
- (int64_t)currentCategorizationVersion;
- (void)_initializeCategorizationVersion;
- (void)changeHighImpactType:(unint64_t)a3 messages:(id)a4;
- (void)incrementCategorizationVersion;
- (void)prepareToPersistCategorizationResultMap:(id)a3;
@end

@implementation EDCategoryPersistence

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__EDCategoryPersistence_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_216 != -1)
  {
    dispatch_once(&log_onceToken_216, block);
  }

  v2 = log_log_215;

  return v2;
}

void __28__EDCategoryPersistence_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_215;
  log_log_215 = v1;
}

+ (id)tablesAndForeignKeysToResolve:(id *)a3 associationsToResolve:(id *)a4
{
  result = MEMORY[0x1E695E0F0];
  *a3 = MEMORY[0x1E695E0F0];
  *a4 = result;
  return result;
}

- (EDCategoryPersistence)initWithDatabase:(id)a3 hookResponder:(id)a4
{
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"EDCategoryPersistence.m" lineNumber:292 description:{@"Invalid parameter not satisfying: %@", @"database != nil"}];
  }

  v23.receiver = self;
  v23.super_class = EDCategoryPersistence;
  v10 = [(EDCategoryPersistence *)&v23 init];
  v11 = v10;
  v12 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_database, a3);
    objc_storeStrong(&v11->_hookResponder, a4);
    if (_os_feature_enabled_impl())
    {
      v13 = [EDCategoryCoreAnalyticsLogger alloc];
      v14 = objc_alloc(MEMORY[0x1E69ADD00]);
      v15 = objc_alloc_init(MEMORY[0x1E69ADD48]);
      v16 = [v14 initWithProvider:v15];
      v17 = [(EDCategoryCoreAnalyticsLogger *)v13 initWithBucketBarController:v16];
      analyticsLogger = v12->_analyticsLogger;
      v12->_analyticsLogger = v17;
    }

    v19 = [objc_alloc(MEMORY[0x1E699B7F0]) initWithObject:&unk_1F45E65E0];
    cachedCurrentCategorizationVersion = v12->_cachedCurrentCategorizationVersion;
    v12->_cachedCurrentCategorizationVersion = v19;
  }

  return v12;
}

- (BOOL)persistCategorizationResult:(id)a3 forGlobalID:(int64_t)a4 categorizationVersion:(int64_t)a5 connection:(id)a6
{
  v41[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a6;
  v11 = objc_alloc(MEMORY[0x1E699B960]);
  v12 = +[EDMessagePersistence messageGlobalDataTableName];
  v13 = [v11 initWithTable:v12];

  v14 = MEMORY[0x1E696AD98];
  v15 = [v9 category];
  v16 = [v14 numberWithInt:{objc_msgSend(v15, "state") == 2}];
  v17 = +[EDMessagePersistence messageGlobalDataCategoryIsTemporaryColumnName];
  [v13 setObject:v16 forKeyedSubscript:v17];

  v18 = MEMORY[0x1E696AD98];
  v19 = [v9 category];
  v20 = [v18 numberWithUnsignedInteger:{objc_msgSend(v19, "type")}];
  v21 = +[EDMessagePersistence messageGlobalDataModelCategoryColumnName];
  [v13 setObject:v20 forKeyedSubscript:v21];

  v22 = MEMORY[0x1E696AD98];
  v23 = [v9 category];
  v24 = [v22 numberWithUnsignedInteger:{objc_msgSend(v23, "subtype")}];
  v25 = +[EDMessagePersistence messageGlobalDataModelSubcategoryColumnName];
  [v13 setObject:v24 forKeyedSubscript:v25];

  v26 = MEMORY[0x1E696AD98];
  v27 = [v9 category];
  v28 = [v26 numberWithBool:{objc_msgSend(v27, "isHighImpact")}];
  v29 = +[EDMessagePersistence messageGlobalDataHighImpactColumnName];
  [v13 setObject:v28 forKeyedSubscript:v29];

  v30 = [v9 metadata];
  v31 = [v30 stringRepresentationWithError:0];

  if (v31)
  {
    v32 = +[EDMessagePersistence messageGlobalDataModelAnalyticsColumnName];
    [v13 setObject:v31 forKeyedSubscript:v32];
  }

  v33 = [MEMORY[0x1E696AD98] numberWithInteger:a5];
  v34 = +[EDMessagePersistence messageGlobalDataCategoryModelVersionColumnName];
  [v13 setObject:v33 forKeyedSubscript:v34];

  v35 = [MEMORY[0x1E699B8C8] column:*MEMORY[0x1E699B768]];
  v36 = [MEMORY[0x1E696AD98] numberWithLongLong:a4];
  v41[0] = v36;
  v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:1];
  v38 = [v35 in:v37];
  [v13 setWhereClause:v38];

  LOBYTE(v38) = [v10 executeUpdateStatement:v13 error:0];
  v39 = *MEMORY[0x1E69E9840];
  return v38;
}

uint64_t __70__EDCategoryPersistence_persistCategorizationResultMap_userInitiated___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 category];
  v5 = [*(a1 + 32) objectForKeyedSubscript:v3];
  v6 = [v5 category];
  v7 = [v4 isEqual:v6];

  return v7 ^ 1u;
}

uint64_t __70__EDCategoryPersistence_persistCategorizationResultMap_userInitiated___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) insertGeneration:{objc_msgSend(v3, "transactionGeneration")}];
  [*(a1 + 40) prepareToPersistCategorizationResultMap:*(a1 + 48)];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __70__EDCategoryPersistence_persistCategorizationResultMap_userInitiated___block_invoke_3;
  v8[3] = &unk_1E8251970;
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v8[4] = *(a1 + 40);
  v10 = v5;
  v6 = v3;
  v9 = v6;
  [v4 enumerateKeysAndObjectsUsingBlock:v8];

  return 1;
}

void __70__EDCategoryPersistence_persistCategorizationResultMap_userInitiated___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  [*(a1 + 32) persistCategorizationResult:v5 forGlobalID:objc_msgSend(v6 categorizationVersion:"globalMessageID") connection:{*(a1 + 48), *(a1 + 40)}];
}

- (void)prepareToPersistCategorizationResultMap:(id)a3
{
  v5 = a3;
  [(EDCategoryPersistence *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[EDCategoryPersistence prepareToPersistCategorizationResultMap:]", "EDCategoryPersistence.m", 369, "0");
}

- (void)changeHighImpactType:(unint64_t)a3 messages:(id)a4
{
  v40 = *MEMORY[0x1E69E9840];
  v25 = a4;
  if ([v25 count])
  {
    v28 = objc_opt_new();
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    obj = v25;
    v5 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v5)
    {
      v6 = *v36;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v36 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v35 + 1) + 8 * i);
          v9 = [v8 category];
          v10 = [objc_alloc(MEMORY[0x1E699AC48]) initWithType:objc_msgSend(v9 subtype:"type") isHighImpact:objc_msgSend(v9 state:{"subtype"), a3 == 1, objc_msgSend(v9, "state")}];
          v11 = [[EDMessageCategorizationResult alloc] initWithCategory:v10 metadata:0];
          [v28 setObject:v11 forKeyedSubscript:v8];
        }

        v5 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v5);
    }

    v12 = [(EDCategoryPersistence *)self hookResponder];
    [v12 persistenceWillChangeCategorizationForMessages:obj];

    v13 = objc_alloc_init(EDPersistenceDatabaseGenerationWindow);
    v14 = [(EDCategoryPersistence *)self database];
    v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDCategoryPersistence changeHighImpactType:messages:]"];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __55__EDCategoryPersistence_changeHighImpactType_messages___block_invoke;
    v29[3] = &unk_1E82519E0;
    v16 = v13;
    v30 = v16;
    v17 = obj;
    v31 = v17;
    v32 = self;
    v18 = v28;
    v33 = v18;
    v34 = a3;
    [v14 __performWriteWithCaller:v15 usingBlock:v29];

    v19 = [(EDCategoryPersistence *)self hookResponder];
    [v19 persistenceDidChangeCategorizationForMessages:v17 userInitiated:1 generationWindow:v16];

    v20 = [v17 firstObject];
    v21 = [v20 category];
    [v21 subtype];
    v22 = EMCategoryFromSubtype();

    v23 = [(EDCategoryPersistence *)self analyticsLogger];
    [v23 logRecategorizationEventForMessages:v17 categoryType:v22 categoryPersistence:self isHighImpactFlagChange:1];
  }

  v24 = *MEMORY[0x1E69E9840];
}

uint64_t __55__EDCategoryPersistence_changeHighImpactType_messages___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [*(a1 + 32) insertGeneration:{objc_msgSend(v3, "transactionGeneration")}];
  v4 = [*(a1 + 40) ef_map:&__block_literal_global_16];
  [*(a1 + 48) prepareToPersistCategorizationResultMap:*(a1 + 56)];
  v5 = objc_alloc(MEMORY[0x1E699B960]);
  v6 = +[EDMessagePersistence messageGlobalDataTableName];
  v7 = [v5 initWithTable:v6];

  v8 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 64) == 1];
  v9 = +[EDMessagePersistence messageGlobalDataHighImpactColumnName];
  [v7 setObject:v8 forKeyedSubscript:v9];

  v10 = [MEMORY[0x1E699B8C8] column:*MEMORY[0x1E699B768]];
  v11 = [v10 in:v4];
  [v7 setWhereClause:v11];

  v19 = 0;
  v12 = [v3 executeUpdateStatement:v7 error:&v19];
  v13 = v19;
  if (v13)
  {
    v14 = +[EDCategoryPersistence log];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = *(a1 + 40);
      v16 = [v13 ef_publicDescription];
      __55__EDCategoryPersistence_changeHighImpactType_messages___block_invoke_cold_1(v15, v16, buf, v14);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
  return v12;
}

id __55__EDCategoryPersistence_changeHighImpactType_messages___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v2, "globalMessageID")}];

  return v3;
}

- (id)modelAnalyticsForMessage:(int64_t)a3
{
  v15 = 0;
  v16[0] = &v15;
  v16[1] = 0x3032000000;
  v16[2] = __Block_byref_object_copy__5;
  v16[3] = __Block_byref_object_dispose__5;
  v17 = 0;
  v4 = [(EDCategoryPersistence *)self database];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDCategoryPersistence modelAnalyticsForMessage:]"];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __50__EDCategoryPersistence_modelAnalyticsForMessage___block_invoke;
  v14[3] = &unk_1E8250150;
  v14[4] = &v15;
  v14[5] = a3;
  [v4 __performReadWithCaller:v5 usingBlock:v14];

  v6 = *(v16[0] + 40);
  if (v6)
  {
    v7 = MEMORY[0x1E696ACB0];
    v8 = [v6 dataUsingEncoding:4];
    v13 = 0;
    v9 = [v7 JSONObjectWithData:v8 options:4 error:&v13];
    v10 = v13;

    if (v10)
    {
      v11 = +[EDCategoryPersistence log];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [(EDCategoryPersistence *)v16 modelAnalyticsForMessage:v10, v11];
      }
    }
  }

  else
  {
    v9 = 0;
  }

  _Block_object_dispose(&v15, 8);

  return v9;
}

uint64_t __50__EDCategoryPersistence_modelAnalyticsForMessage___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc(MEMORY[0x1E699B948]);
  v5 = +[EDMessagePersistence messageGlobalDataModelAnalyticsColumnName];
  v6 = +[EDMessagePersistence messageGlobalDataTableName];
  v7 = [v4 initWithResultColumn:v5 table:v6];

  v8 = [MEMORY[0x1E699B8C8] column:*MEMORY[0x1E699B768]];
  v9 = [MEMORY[0x1E696AD98] numberWithLongLong:*(a1 + 40)];
  v10 = [v8 equalTo:v9];
  [v7 setWhere:v10];

  v16 = 0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __50__EDCategoryPersistence_modelAnalyticsForMessage___block_invoke_2;
  v17[3] = &unk_1E8250418;
  v17[4] = *(a1 + 32);
  LOBYTE(v9) = [v3 executeSelectStatement:v7 withBlock:v17 error:&v16];
  v11 = v16;
  if ((v9 & 1) == 0)
  {
    v12 = MEMORY[0x1E696AEC0];
    v13 = [MEMORY[0x1E696AD98] numberWithLongLong:*(a1 + 40)];
    v14 = [v12 stringWithFormat:@"Failed to read modelAnalytics for messageID:%@", v13];
    [v3 handleError:v11 message:v14];
  }

  return 1;
}

void __50__EDCategoryPersistence_modelAnalyticsForMessage___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 objectAtIndexedSubscript:0];
  v4 = [v3 stringValue];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

+ (void)initializeCategorizationVersion:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v3 = _setCategorizationVersionUsingConnection(a3, &v8);
  v4 = v8;
  if ((v3 & 1) == 0)
  {
    v5 = +[EDCategoryPersistence log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v6 = [v4 ef_publicDescription];
      [(EDCategoryPersistence *)v6 initializeCategorizationVersion:buf, v5];
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_initializeCategorizationVersion
{
  v4 = [(EDCategoryPersistence *)self database];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDCategoryPersistence _initializeCategorizationVersion]"];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __57__EDCategoryPersistence__initializeCategorizationVersion__block_invoke;
  v6[3] = &unk_1E82503F0;
  v6[4] = self;
  v6[5] = a2;
  [v4 __performWriteWithCaller:v5 usingBlock:v6];
}

uint64_t __57__EDCategoryPersistence__initializeCategorizationVersion__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v11 = 0;
  v4 = _setCategorizationVersionUsingConnection(v3, &v11);
  v5 = v11;
  if ((v4 & 1) == 0)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = *(a1 + 32);
    v8 = *(a1 + 40);
    v10 = [v5 ef_publicDescription];
    [v7 handleFailureInMethod:v8 object:v9 file:@"EDCategoryPersistence.m" lineNumber:462 description:{@"Could not initialize categorization version. Error:%@", v10}];
  }

  return 1;
}

- (void)incrementCategorizationVersion
{
  v3 = [(EDCategoryPersistence *)self currentCategorizationVersion];
  v4 = [(EDCategoryPersistence *)self database];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDCategoryPersistence incrementCategorizationVersion]"];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__EDCategoryPersistence_incrementCategorizationVersion__block_invoke;
  v6[3] = &unk_1E82503F0;
  v6[4] = self;
  v6[5] = v3;
  [v4 __performWriteWithCaller:v5 usingBlock:v6];
}

uint64_t __55__EDCategoryPersistence_incrementCategorizationVersion__block_invoke(uint64_t a1, void *a2)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_alloc(MEMORY[0x1E699B968]);
  v17[0] = @"key";
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  v6 = [v4 initWithTable:@"properties" conflictTarget:v5];

  [v6 setObject:@"CategorizationVersion" forKeyedSubscript:@"key"];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 40) + 1];
  [v6 setObject:v7 forKeyedSubscript:@"value"];

  v15 = 0;
  v8 = [v3 executeUpsertStatement:v6 error:&v15];
  v9 = v15;
  if (v8)
  {
    v10 = [*(a1 + 32) cachedCurrentCategorizationVersion];
    v11 = [v6 objectForKeyedSubscript:@"value"];
    [v10 setObject:v11];
  }

  else
  {
    v10 = +[EDCategoryPersistence log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = [v9 ef_publicDescription];
      __55__EDCategoryPersistence_incrementCategorizationVersion__block_invoke_cold_1(v12, buf, v10);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return 1;
}

- (int64_t)currentCategorizationVersion
{
  v20 = *MEMORY[0x1E69E9840];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v3 = [(EDCategoryPersistence *)self cachedCurrentCategorizationVersion];
  v4 = [v3 getObject];
  v5 = [v4 integerValue];

  v17 = v5;
  if (v15[3] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [(EDCategoryPersistence *)self database];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDCategoryPersistence currentCategorizationVersion]"];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __53__EDCategoryPersistence_currentCategorizationVersion__block_invoke;
    v13[3] = &unk_1E8250FD8;
    v13[4] = self;
    v13[5] = &v14;
    [v6 __performReadWithCaller:v7 usingBlock:v13];
  }

  v8 = +[EDCategoryPersistence log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v15[3];
    *buf = 134217984;
    v19 = v9;
    _os_log_impl(&dword_1C61EF000, v8, OS_LOG_TYPE_DEFAULT, "Current categorization version set to %ld.", buf, 0xCu);
  }

  v10 = v15[3];
  _Block_object_dispose(&v14, 8);
  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t __53__EDCategoryPersistence_currentCategorizationVersion__block_invoke(uint64_t a1, void *a2)
{
  v15 = 0;
  v3 = a2;
  v4 = [objc_alloc(MEMORY[0x1E699B948]) initWithResultColumn:@"value" table:@"properties"];
  v5 = [MEMORY[0x1E699B8C8] column:@"key"];
  v6 = [v5 equalTo:@"CategorizationVersion"];
  [v4 setWhere:v6];

  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0x7FFFFFFFFFFFFFFFLL;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = ___categorizationVersionUsingConnection_block_invoke;
  v16[3] = &unk_1E8250418;
  v16[4] = &v17;
  [v3 executeSelectStatement:v4 withBlock:v16 error:&v15];
  v7 = v18[3];
  _Block_object_dispose(&v17, 8);

  v8 = v15;
  *(*(*(a1 + 40) + 8) + 24) = v7;
  v9 = *(*(a1 + 40) + 8);
  if (*(v9 + 24) == 0x7FFFFFFFFFFFFFFFLL)
  {
    *(v9 + 24) = 1;
    v10 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __53__EDCategoryPersistence_currentCategorizationVersion__block_invoke_2;
    block[3] = &unk_1E8250260;
    block[4] = *(a1 + 32);
    dispatch_async(v10, block);
  }

  v11 = [*(a1 + 32) cachedCurrentCategorizationVersion];
  v12 = [MEMORY[0x1E696AD98] numberWithInteger:*(*(*(a1 + 40) + 8) + 24)];
  [v11 setObject:v12];

  return 1;
}

- (id)requestProtectedDatabaseBackgroundProcessingForDuration:(double)a3 error:(id *)a4
{
  v6 = [(EDCategoryPersistence *)self database];
  v7 = [v6 requestProtectedDatabaseBackgroundProcessingForDuration:a4 error:a3];

  return v7;
}

+ (void)addCategoryColumnsToMessagesSelectComponent:(id)a3 globalMessagesSelectComponent:(id)a4 businessAddressesSelectComponent:(id)a5
{
  v13 = a4;
  v6 = a5;
  v7 = +[EDMessagePersistence messageGlobalDataModelCategoryColumnName];
  [v13 addResultColumn:v7];

  v8 = +[EDMessagePersistence messageGlobalDataModelSubcategoryColumnName];
  [v13 addResultColumn:v8];

  v9 = +[EDMessagePersistence messageGlobalDataCategoryIsTemporaryColumnName];
  [v13 addResultColumn:v9];

  v10 = +[EDMessagePersistence messageGlobalDataHighImpactColumnName];
  [v13 addResultColumn:v10];

  v11 = +[EDBusinessPersistence businessAddressesCategoryColumnName];
  v12 = +[EDMessagePersistence messageBusinessCategoryColumnAlias];
  [v6 addResultColumn:v11 alias:v12];
}

+ (id)categoryForResultRow:(id)a3
{
  v3 = a3;
  v4 = +[EDMessagePersistence messageGlobalDataModelCategoryColumnName];
  if (![v3 columnExistsWithName:v4])
  {
    goto LABEL_10;
  }

  v5 = +[EDMessagePersistence messageGlobalDataModelSubcategoryColumnName];
  if (![v3 columnExistsWithName:v5])
  {
LABEL_9:

LABEL_10:
    v14 = 0;
LABEL_11:

    goto LABEL_12;
  }

  v6 = +[EDMessagePersistence messageGlobalDataCategoryIsTemporaryColumnName];
  if (([v3 columnExistsWithName:v6] & 1) == 0)
  {

    goto LABEL_9;
  }

  v7 = +[EDMessagePersistence messageGlobalDataHighImpactColumnName];
  v8 = [v3 columnExistsWithName:v7];

  if (v8)
  {
    v9 = +[EDMessagePersistence messageBusinessCategoryColumnAlias];
    v10 = [v3 columnExistsWithName:v9];

    if (!v10)
    {
      goto LABEL_16;
    }

    v11 = +[EDMessagePersistence messageBusinessCategoryColumnAlias];
    v12 = [v3 objectForKeyedSubscript:v11];
    v4 = [v12 numberValue];

    if (v4)
    {
      v13 = 3;
    }

    else
    {
LABEL_16:
      v16 = +[EDMessagePersistence messageGlobalDataModelCategoryColumnName];
      v17 = [v3 objectForKeyedSubscript:v16];
      v4 = [v17 numberValue];

      if (v4)
      {
        v18 = +[EDMessagePersistence messageGlobalDataCategoryIsTemporaryColumnName];
        v19 = [v3 objectForKeyedSubscript:v18];
        v20 = [v19 BOOLValue];

        if (v20)
        {
          v13 = 2;
        }

        else
        {
          v13 = 1;
        }
      }

      else
      {
        v13 = 0;
      }
    }

    v21 = +[EDMessagePersistence messageGlobalDataModelSubcategoryColumnName];
    v22 = [v3 objectForKeyedSubscript:v21];
    v23 = [v22 numberValue];
    v24 = [v23 unsignedIntegerValue];

    v25 = +[EDMessagePersistence messageGlobalDataHighImpactColumnName];
    v26 = [v3 objectForKeyedSubscript:v25];
    v27 = [v26 BOOLValue];

    v14 = [objc_alloc(MEMORY[0x1E699AC48]) initWithType:objc_msgSend(v4 subtype:"unsignedIntegerValue") isHighImpact:v24 state:{v27, v13}];
    goto LABEL_11;
  }

  v14 = 0;
LABEL_12:

  return v14;
}

void __55__EDCategoryPersistence_changeHighImpactType_messages___block_invoke_cold_1(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_1C61EF000, log, OS_LOG_TYPE_ERROR, "Failed to update high impact property for messages %@ error %{public}@", buf, 0x16u);
}

- (void)modelAnalyticsForMessage:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *(*a1 + 40);
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_1C61EF000, log, OS_LOG_TYPE_ERROR, "Model Analytics is invalid JSON: %@. Error:%@", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

+ (void)initializeCategorizationVersion:(os_log_t)log .cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_fault_impl(&dword_1C61EF000, log, OS_LOG_TYPE_FAULT, "Couldn not set categorization version set to 1 due to error  %{public}@.", buf, 0xCu);
}

void __55__EDCategoryPersistence_incrementCategorizationVersion__block_invoke_cold_1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1C61EF000, log, OS_LOG_TYPE_ERROR, "Failed to increment categorization version due to error %{public}@", buf, 0xCu);
}

@end