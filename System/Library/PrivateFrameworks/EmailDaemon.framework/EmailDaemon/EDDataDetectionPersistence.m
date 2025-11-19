@interface EDDataDetectionPersistence
+ (id)_dataDetectionResultsTableSchemaWithName:(id)a3;
+ (id)protectedTablesAndForeignKeysToResolve:(id *)a3;
- (BOOL)_addDataDetectionResults:(id)a3 withGlobalMessageID:(int64_t)a4 toTable:(id)a5 withConnection:(id)a6;
- (BOOL)_hookResponderRespondsToRequiredMethods:(id)a3;
- (BOOL)addDataDetectionResults:(id)a3 globalMessageID:(int64_t)a4;
- (EDDataDetectionPersistence)initWithDatabase:(id)a3 messagePersistence:(id)a4 hookResponder:(id)a5;
- (EDMessageChangeHookResponder)hookResponder;
- (id)_getPersistedMessagesFromGlobalMessageID:(int64_t)a3;
- (id)getDataDetectionResultRowIDsForGlobalMessageID:(int64_t)a3;
- (id)getDataDetectionResultsForGlobalMessageID:(int64_t)a3;
@end

@implementation EDDataDetectionPersistence

void ___ef_log_EDDataDetectionPersistence_block_invoke()
{
  v0 = os_log_create("com.apple.email", "EDDataDetectionPersistence");
  v1 = _ef_log_EDDataDetectionPersistence_log;
  _ef_log_EDDataDetectionPersistence_log = v0;
}

+ (id)protectedTablesAndForeignKeysToResolve:(id *)a3
{
  v7[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    *a3 = MEMORY[0x1E695E0F0];
  }

  v3 = [a1 _dataDetectionResultsTableSchemaWithName:@"data_detection_results"];
  v7[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)_dataDetectionResultsTableSchemaWithName:(id)a3
{
  v14[3] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc(MEMORY[0x1E699B958]);
  v5 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"global_message_id" nullable:0];
  v14[0] = v5;
  v6 = [MEMORY[0x1E699B8D0] textColumnWithName:@"category" collation:1 nullable:0];
  v14[1] = v6;
  v7 = [MEMORY[0x1E699B8D0] textColumnWithName:@"value" collation:1 nullable:0];
  v14[2] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:3];
  v9 = [v4 initWithName:v3 rowIDType:1 columns:v8];

  v13[0] = @"global_message_id";
  v13[1] = @"category";
  v13[2] = @"value";
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:3];
  [v9 addUniquenessConstraintForColumns:v10 conflictResolution:1];

  v11 = *MEMORY[0x1E69E9840];

  return v9;
}

- (EDDataDetectionPersistence)initWithDatabase:(id)a3 messagePersistence:(id)a4 hookResponder:(id)a5
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v17.receiver = self;
  v17.super_class = EDDataDetectionPersistence;
  v13 = [(EDDataDetectionPersistence *)&v17 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_database, a3);
    objc_storeWeak(&v14->_hookResponder, v12);
    objc_storeStrong(&v14->_messagePersistence, a4);
    if (v12)
    {
      if (![(EDDataDetectionPersistence *)v14 _hookResponderRespondsToRequiredMethods:v12])
      {
        v16 = [MEMORY[0x1E696AAA8] currentHandler];
        [v16 handleFailureInMethod:a2 object:v14 file:@"EDDataDetectionPersistence.m" lineNumber:68 description:@"HookResponder does not respond to all of the methods required by EDDataDetectionPersistence."];
      }
    }
  }

  return v14;
}

- (BOOL)addDataDetectionResults:(id)a3 globalMessageID:(int64_t)a4
{
  v6 = a3;
  if ([v6 count])
  {
    v7 = objc_alloc_init(EDPersistenceDatabaseGenerationWindow);
    v8 = [(EDDataDetectionPersistence *)self hookResponder];
    [v8 persistenceWillBeginUpdates];

    v28 = 0;
    v29 = &v28;
    v30 = 0x2020000000;
    v31 = 1;
    v9 = [(EDDataDetectionPersistence *)self _getPersistedMessagesFromGlobalMessageID:a4];
    v10 = [(EDDataDetectionPersistence *)self database];
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDDataDetectionPersistence addDataDetectionResults:globalMessageID:]"];
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __70__EDDataDetectionPersistence_addDataDetectionResults_globalMessageID___block_invoke;
    v21 = &unk_1E8252018;
    v26 = &v28;
    v22 = self;
    v23 = v6;
    v27 = a4;
    v12 = v9;
    v24 = v12;
    v13 = v7;
    v25 = v13;
    [v10 __performWriteWithCaller:v11 usingBlock:&v18];

    v14 = [(EDDataDetectionPersistence *)self hookResponder:v18];
    [v14 persistenceDidAddDataDetectionResults:v12 generationWindow:v13];

    v15 = [(EDDataDetectionPersistence *)self hookResponder];
    [v15 persistenceDidFinishUpdates];

    v16 = *(v29 + 24);
    _Block_object_dispose(&v28, 8);
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t __70__EDDataDetectionPersistence_addDataDetectionResults_globalMessageID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 64) + 8) + 24) = [*(a1 + 32) _addDataDetectionResults:*(a1 + 40) withGlobalMessageID:*(a1 + 72) toTable:@"data_detection_results" withConnection:v3];
  v4 = [*(a1 + 32) hookResponder];
  [v4 persistenceIsAddingDataDetectionResults:*(a1 + 48) generationWindow:*(a1 + 56)];

  v5 = *(*(*(a1 + 64) + 8) + 24);
  return v5;
}

- (BOOL)_addDataDetectionResults:(id)a3 withGlobalMessageID:(int64_t)a4 toTable:(id)a5 withConnection:(id)a6
{
  v36 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a5;
  v11 = a6;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__10;
  v33 = __Block_byref_object_dispose__10;
  v34 = [objc_alloc(MEMORY[0x1E699B910]) initWithTable:v10 conflictResolution:4];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __98__EDDataDetectionPersistence__addDataDetectionResults_withGlobalMessageID_toTable_withConnection___block_invoke;
  v28[3] = &unk_1E8252040;
  v28[4] = &v29;
  v28[5] = a4;
  [v9 enumerateKeysAndObjectsUsingBlock:v28];
  v12 = v30[5];
  v27 = 0;
  v13 = [v11 executeInsertStatement:v12 error:&v27];
  v14 = v27;
  v15 = _ef_log_EDDataDetectionPersistence();
  v16 = v15;
  if (v13)
  {
    v17 = v15;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v18 = [MEMORY[0x1E699B858] partiallyRedactedDictionary:v9];
      [EDDataDetectionPersistence _addDataDetectionResults:v18 withGlobalMessageID:buf toTable:v17 withConnection:?];
    }
  }

  else
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [(EDDataDetectionPersistence *)v14 _addDataDetectionResults:v16 withGlobalMessageID:v19 toTable:v20 withConnection:v21, v22, v23, v24];
    }

    [v11 handleError:v14 message:@"Inserting into the data detection results table"];
  }

  _Block_object_dispose(&v29, 8);
  v25 = *MEMORY[0x1E69E9840];
  return v13;
}

void __98__EDDataDetectionPersistence__addDataDetectionResults_withGlobalMessageID_toTable_withConnection___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = a3;
  v6 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v14 + 1) + 8 * v8);
        v10 = [*(*(*(a1 + 32) + 8) + 40) addValue];
        [v10 setObject:v9 forKeyedSubscript:@"value"];
        [v10 setObject:v5 forKeyedSubscript:@"category"];
        v11 = [MEMORY[0x1E696AD98] numberWithLongLong:*(a1 + 40)];
        [v10 setObject:v11 forKeyedSubscript:@"global_message_id"];

        ++v8;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (id)getDataDetectionResultsForGlobalMessageID:(int64_t)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__10;
  v20 = __Block_byref_object_dispose__10;
  v21 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v5 = [(EDDataDetectionPersistence *)self database];
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDDataDetectionPersistence getDataDetectionResultsForGlobalMessageID:]"];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __72__EDDataDetectionPersistence_getDataDetectionResultsForGlobalMessageID___block_invoke;
  v15[3] = &unk_1E8250150;
  v15[4] = &v16;
  v15[5] = a3;
  [v5 __performReadWithCaller:v6 usingBlock:v15];

  v7 = [v17[5] count];
  v8 = _ef_log_EDDataDetectionPersistence();
  v9 = v8;
  if (v7)
  {
    v10 = v8;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [MEMORY[0x1E699B858] partiallyRedactedDictionary:v17[5]];
      *buf = 134349314;
      v23 = a3;
      v24 = 2112;
      v25 = v11;
      _os_log_impl(&dword_1C61EF000, v10, OS_LOG_TYPE_DEFAULT, "Database read data detection results for message %{public}lld: %@", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134349056;
    v23 = a3;
    _os_log_impl(&dword_1C61EF000, v9, OS_LOG_TYPE_DEFAULT, "Did not find any data detection results for message %{public}lld", buf, 0xCu);
  }

  v12 = v17[5];
  _Block_object_dispose(&v16, 8);

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

uint64_t __72__EDDataDetectionPersistence_getDataDetectionResultsForGlobalMessageID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [objc_alloc(MEMORY[0x1E699B948]) initWithResultColumn:@"value" table:@"data_detection_results"];
  [v4 addResultColumn:@"category"];
  v5 = [MEMORY[0x1E699B8C8] column:@"global_message_id"];
  v6 = [MEMORY[0x1E696AD98] numberWithLongLong:*(a1 + 40)];
  v7 = [v5 is:v6];
  [v4 setWhere:v7];

  v17 = 0;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __72__EDDataDetectionPersistence_getDataDetectionResultsForGlobalMessageID___block_invoke_2;
  v18[3] = &unk_1E8250418;
  v18[4] = *(a1 + 32);
  LOBYTE(v7) = [v3 executeSelectStatement:v4 withBlock:v18 error:&v17];
  v8 = v17;
  if ((v7 & 1) == 0)
  {
    v9 = _ef_log_EDDataDetectionPersistence();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __72__EDDataDetectionPersistence_getDataDetectionResultsForGlobalMessageID___block_invoke_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
    }

    [v3 handleError:v8 message:@"Reading data detection results"];
  }

  return 1;
}

void __72__EDDataDetectionPersistence_getDataDetectionResultsForGlobalMessageID___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [v10 objectForKeyedSubscript:@"category"];
  v4 = [v3 stringValue];

  v5 = [*(*(*(a1 + 32) + 8) + 40) objectForKeyedSubscript:v4];

  if (!v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [*(*(*(a1 + 32) + 8) + 40) setObject:v6 forKeyedSubscript:v4];
  }

  v7 = [*(*(*(a1 + 32) + 8) + 40) objectForKeyedSubscript:v4];
  v8 = [v10 objectForKeyedSubscript:@"value"];
  v9 = [v8 stringValue];
  [v7 addObject:v9];
}

- (id)getDataDetectionResultRowIDsForGlobalMessageID:(int64_t)a3
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__10;
  v18 = __Block_byref_object_dispose__10;
  v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x2020000000;
  v13 = 0;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x3032000000;
  v10[3] = __Block_byref_object_copy__10;
  v10[4] = __Block_byref_object_dispose__10;
  v11 = 0;
  v5 = [(EDDataDetectionPersistence *)self database];
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDDataDetectionPersistence getDataDetectionResultRowIDsForGlobalMessageID:]"];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __77__EDDataDetectionPersistence_getDataDetectionResultRowIDsForGlobalMessageID___block_invoke;
  v9[3] = &unk_1E8252068;
  v9[4] = v12;
  v9[5] = &v14;
  v9[6] = v10;
  v9[7] = a3;
  [v5 __performReadWithCaller:v6 usingBlock:v9];

  v7 = v15[5];
  _Block_object_dispose(v10, 8);

  _Block_object_dispose(v12, 8);
  _Block_object_dispose(&v14, 8);

  return v7;
}

uint64_t __77__EDDataDetectionPersistence_getDataDetectionResultRowIDsForGlobalMessageID___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = [objc_alloc(MEMORY[0x1E699B948]) initWithResultColumn:@"ROWID" table:@"data_detection_results"];
  v5 = [MEMORY[0x1E699B8C8] column:@"global_message_id"];
  v6 = [MEMORY[0x1E696AD98] numberWithLongLong:a1[7]];
  v7 = [v5 is:v6];
  [v4 setWhere:v7];

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __77__EDDataDetectionPersistence_getDataDetectionResultRowIDsForGlobalMessageID___block_invoke_2;
  v21[3] = &unk_1E8250418;
  v9 = (a1 + 6);
  v8 = a1[6];
  v21[4] = a1[5];
  v10 = *(v8 + 8);
  obj = *(v10 + 40);
  v11 = [v3 executeSelectStatement:v4 withBlock:v21 error:&obj];
  objc_storeStrong((v10 + 40), obj);
  *(*(a1[4] + 8) + 24) = v11;
  if ((*(*(a1[4] + 8) + 24) & 1) == 0)
  {
    v12 = _ef_log_EDDataDetectionPersistence();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __77__EDDataDetectionPersistence_getDataDetectionResultRowIDsForGlobalMessageID___block_invoke_cold_1(v9, v12, v13, v14, v15, v16, v17, v18);
    }

    [v3 handleError:*(*(*v9 + 8) + 40) message:@"Getting data detection results from message ID"];
  }

  return 1;
}

void __77__EDDataDetectionPersistence_getDataDetectionResultRowIDsForGlobalMessageID___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v4 = [a2 objectForKeyedSubscript:@"ROWID"];
  v3 = [v4 numberValue];
  [v2 addObject:v3];
}

- (id)_getPersistedMessagesFromGlobalMessageID:(int64_t)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = [(EDDataDetectionPersistence *)self messagePersistence];
  v6 = [MEMORY[0x1E696AD98] numberWithLongLong:a3];
  v13[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  v8 = [v5 persistedMessageIDsForGlobalMessageIDs:v7];

  v9 = [(EDDataDetectionPersistence *)self messagePersistence];
  v10 = [v9 persistedMessagesForDatabaseIDs:v8 requireProtectedData:0 temporarilyUnavailableDatabaseIDs:0];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (BOOL)_hookResponderRespondsToRequiredMethods:(id)a3
{
  v3 = a3;
  if (objc_opt_respondsToSelector())
  {
    v4 = objc_opt_respondsToSelector();
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

- (EDMessageChangeHookResponder)hookResponder
{
  WeakRetained = objc_loadWeakRetained(&self->_hookResponder);

  return WeakRetained;
}

- (void)_addDataDetectionResults:(uint64_t)a3 withGlobalMessageID:(uint64_t)a4 toTable:(uint64_t)a5 withConnection:(uint64_t)a6 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_4(&dword_1C61EF000, a2, a3, "Error: %@ unable to persist all results into data_detection_results table", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)_addDataDetectionResults:(os_log_t)log withGlobalMessageID:toTable:withConnection:.cold.2(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_debug_impl(&dword_1C61EF000, log, OS_LOG_TYPE_DEBUG, "Successfully detected and persisted data detection results: %@", buf, 0xCu);
}

void __72__EDDataDetectionPersistence_getDataDetectionResultsForGlobalMessageID___block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_4(&dword_1C61EF000, a2, a3, "Error reading data detection results: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void __77__EDDataDetectionPersistence_getDataDetectionResultRowIDsForGlobalMessageID___block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = HIDWORD(*(*(*a1 + 8) + 40));
  OUTLINED_FUNCTION_0_4(&dword_1C61EF000, a2, a3, "Error getting data detection results from message ID: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

@end