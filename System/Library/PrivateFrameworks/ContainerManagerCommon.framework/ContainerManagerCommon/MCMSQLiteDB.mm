@interface MCMSQLiteDB
+ (BOOL)moveDBWithURL:(id)l toURL:(id)rL queue:(id)queue error:(id *)error;
+ (sqlite3)openDBWithURL:(id)l queue:(id)queue error:(id *)error;
- (BOOL)_deleteCodeSigningWithIdentifier:(id)identifier error:(id *)error;
- (BOOL)_insertChildIdentifier:(id)identifier forParentIdentifier:(id)parentIdentifier error:(id *)error;
- (BOOL)_insertCodeSigningData:(id)data forIdentifier:(id)identifier error:(id *)error;
- (BOOL)_insertCodeSigningInfo:(id)info forIdentifier:(id)identifier error:(id *)error;
- (BOOL)_performInsertOrUpdateQuery:(const char *)query withCodeSigningEntry:(id)entry forIdentifier:(id)identifier isUpdate:(BOOL)update error:(id *)error;
- (BOOL)_performSingleParameterQuery:(const char *)query withTextInput:(id)input error:(id *)error;
- (BOOL)_performTwoParameterQuery:(const char *)query withTextInputOne:(id)one andTextInputTwo:(id)two expectedChanges:(int)changes error:(id *)error;
- (BOOL)_sqliteExec:(id)exec error:(id *)error;
- (BOOL)addCodeSigningEntry:(id)entry withIdentifier:(id)identifier error:(id *)error;
- (BOOL)deleteAllAdvanceCopiesOfCodeSigningEntriesWithError:(id *)error;
- (BOOL)deleteAllInvalidPluginCodeSigningEntriesWithNumChanges:(int *)changes error:(id *)error;
- (BOOL)deleteCodeSigningEntryWithIdentifier:(id)identifier error:(id *)error;
- (BOOL)invalidateCodeSigningForIdentifierAndAllChildren:(id)children error:(id *)error;
- (BOOL)invalidateCodeSigningWithIdentifier:(id)identifier error:(id *)error;
- (MCMSQLiteDB)initWithURL:(id)l queue:(id)queue error:(id *)error;
- (MCMSQLiteDBCodeSigningPeerageDelegate)peerageDelegate;
- (NSURL)url;
- (OS_dispatch_queue)queue;
- (id)_codeSigningEntryFromStatementRow:(sqlite3_stmt *)row error:(id *)error;
- (id)_selectCodeSigningEntryWithIdentifier:(id)identifier error:(id *)error;
- (id)childIdentifiersForParentIdentifier:(id)identifier error:(id *)error;
- (id)childParentMapWithError:(id *)error;
- (id)codeSigningEntryWithIdentifier:(id)identifier error:(id *)error;
- (id)enumerateIdentifiersAndCodeSigningInfoUsingBlock:(id)block;
- (id)identifiersWithError:(id *)error;
- (id)parentIdentifierForChildIdentifier:(id)identifier error:(id *)error;
- (sqlite3)db;
- (void)closeDB;
- (void)dealloc;
- (void)setDb:(sqlite3 *)db;
- (void)setPeerageDelegate:(id)delegate;
- (void)setQueue:(id)queue;
- (void)setUrl:(id)url;
@end

@implementation MCMSQLiteDB

- (sqlite3)db
{
  result = self->_db;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (void)setQueue:(id)queue
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];
  p_queue = &self->_queue;

  objc_storeStrong(p_queue, queue);
}

- (OS_dispatch_queue)queue
{
  result = self->_queue;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (void)setUrl:(id)url
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];
  p_url = &self->_url;

  objc_storeStrong(p_url, url);
}

- (NSURL)url
{
  result = self->_url;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (void)setDb:(sqlite3 *)db
{
  v4 = *MEMORY[0x1E69E9840];
  self->_db = db;
  v3 = *MEMORY[0x1E69E9840];
}

- (void)setPeerageDelegate:(id)delegate
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];
  p_peerageDelegate = &self->_peerageDelegate;

  objc_storeWeak(p_peerageDelegate, delegate);
}

- (MCMSQLiteDBCodeSigningPeerageDelegate)peerageDelegate
{
  v5 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_peerageDelegate);
  v3 = *MEMORY[0x1E69E9840];

  return WeakRetained;
}

- (BOOL)deleteAllInvalidPluginCodeSigningEntriesWithNumChanges:(int *)changes error:(id *)error
{
  v30 = *MEMORY[0x1E69E9840];
  ppStmt = 0;
  v7 = [(MCMSQLiteDB *)self db];
  if (sqlite3_prepare_v2(v7, "DELETE FROM code_signing_info WHERE placeholder = 0 AND invalid = 1 AND data_container_class = ?;", -1, &ppStmt, 0))
  {
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __76__MCMSQLiteDB_deleteAllInvalidPluginCodeSigningEntriesWithNumChanges_error___block_invoke;
    v24[3] = &unk_1E86B0B48;
    v24[4] = self;
    v24[5] = v7;
    v8 = __76__MCMSQLiteDB_deleteAllInvalidPluginCodeSigningEntriesWithNumChanges_error___block_invoke(v24);
LABEL_12:
    v11 = v8;
    v9 = 0;
    v12 = 0;
    goto LABEL_13;
  }

  if (sqlite3_bind_int(ppStmt, 1, 4))
  {
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __76__MCMSQLiteDB_deleteAllInvalidPluginCodeSigningEntriesWithNumChanges_error___block_invoke_367;
    v23[3] = &unk_1E86B0B48;
    v23[4] = self;
    v23[5] = v7;
    v8 = __76__MCMSQLiteDB_deleteAllInvalidPluginCodeSigningEntriesWithNumChanges_error___block_invoke_367(v23);
    goto LABEL_12;
  }

  if (sqlite3_step(ppStmt) != 101)
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __76__MCMSQLiteDB_deleteAllInvalidPluginCodeSigningEntriesWithNumChanges_error___block_invoke_373;
    v22[3] = &unk_1E86B0B48;
    v22[4] = self;
    v22[5] = v7;
    v8 = __76__MCMSQLiteDB_deleteAllInvalidPluginCodeSigningEntriesWithNumChanges_error___block_invoke_373(v22);
    goto LABEL_12;
  }

  v9 = sqlite3_changes(v7);
  if (v9 >= 1)
  {
    v10 = container_log_handle_for_category();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      LODWORD(v27) = v9;
      _os_log_debug_impl(&dword_1DF2C3000, v10, OS_LOG_TYPE_DEBUG, "Deleted %d invalid plugin code signing entries.", buf, 8u);
    }
  }

  v11 = 0;
  v12 = 1;
LABEL_13:
  if (ppStmt && sqlite3_finalize(ppStmt))
  {
    v13 = container_log_handle_for_category();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v19 = [(MCMSQLiteDB *)self url];
      path = [v19 path];
      v21 = sqlite3_errmsg(v7);
      *buf = 138412546;
      v27 = path;
      v28 = 2080;
      v29 = v21;
      _os_log_error_impl(&dword_1DF2C3000, v13, OS_LOG_TYPE_ERROR, "sqlite3_finalize for %@ failed: %s", buf, 0x16u);
    }
  }

  v14 = !v12;
  if (!changes)
  {
    v14 = 1;
  }

  if ((v14 & 1) == 0)
  {
    *changes = v9;
  }

  if (error)
  {
    v15 = v12;
  }

  else
  {
    v15 = 1;
  }

  if ((v15 & 1) == 0)
  {
    v16 = v11;
    *error = v11;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v12;
}

id __76__MCMSQLiteDB_deleteAllInvalidPluginCodeSigningEntriesWithNumChanges_error___block_invoke(uint64_t a1)
{
  v16[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) url];
  v4 = [v3 path];
  v5 = [v2 initWithFormat:@"sqlite3_prepare(delete) for %@ failed: %s", v4, sqlite3_errmsg(*(a1 + 40))];

  v15[0] = @"FunctionName";
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB deleteAllInvalidPluginCodeSigningEntriesWithNumChanges:error:]_block_invoke"];
  v16[0] = v6;
  v16[1] = &unk_1F5A76F30;
  v7 = *MEMORY[0x1E696A578];
  v15[1] = @"SourceFileLine";
  v15[2] = v7;
  v16[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:3];

  v9 = container_log_handle_for_category();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v14 = v5;
    _os_log_error_impl(&dword_1DF2C3000, v9, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:66 userInfo:v8];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

id __76__MCMSQLiteDB_deleteAllInvalidPluginCodeSigningEntriesWithNumChanges_error___block_invoke_367(uint64_t a1)
{
  v16[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) url];
  v4 = [v3 path];
  v5 = [v2 initWithFormat:@"sqlite3_bind_text for plugin data container class at %@ failed: %s", v4, sqlite3_errmsg(*(a1 + 40))];

  v15[0] = @"FunctionName";
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB deleteAllInvalidPluginCodeSigningEntriesWithNumChanges:error:]_block_invoke"];
  v16[0] = v6;
  v16[1] = &unk_1F5A76F48;
  v7 = *MEMORY[0x1E696A578];
  v15[1] = @"SourceFileLine";
  v15[2] = v7;
  v16[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:3];

  v9 = container_log_handle_for_category();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v14 = v5;
    _os_log_error_impl(&dword_1DF2C3000, v9, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:66 userInfo:v8];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

id __76__MCMSQLiteDB_deleteAllInvalidPluginCodeSigningEntriesWithNumChanges_error___block_invoke_373(uint64_t a1)
{
  v16[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) url];
  v4 = [v3 path];
  v5 = [v2 initWithFormat:@"sqlite3_step for %@ failed: %s", v4, sqlite3_errmsg(*(a1 + 40))];

  v15[0] = @"FunctionName";
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB deleteAllInvalidPluginCodeSigningEntriesWithNumChanges:error:]_block_invoke"];
  v16[0] = v6;
  v16[1] = &unk_1F5A76F60;
  v7 = *MEMORY[0x1E696A578];
  v15[1] = @"SourceFileLine";
  v15[2] = v7;
  v16[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:3];

  v9 = container_log_handle_for_category();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v14 = v5;
    _os_log_error_impl(&dword_1DF2C3000, v9, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:66 userInfo:v8];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)childParentMapWithError:(id *)error
{
  v34 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  v5 = objc_opt_new();
  ppStmt = 0;
  v6 = [(MCMSQLiteDB *)self db];
  if (!sqlite3_prepare_v2(v6, "SELECT child_code_signing_id_text, code_signing_info.code_signing_id_text FROM child_bundles, code_signing_info WHERE child_bundles.parent_id=code_signing_info.id;", -1, &ppStmt, 0))
  {
    while (1)
    {
      v14 = sqlite3_step(ppStmt);
      if ((v14 - 102) <= 0xFFFFFFFD)
      {
        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 3221225472;
        v27[2] = __39__MCMSQLiteDB_childParentMapWithError___block_invoke_349;
        v27[3] = &unk_1E86B0B48;
        v27[4] = self;
        v27[5] = v6;
        v7 = __39__MCMSQLiteDB_childParentMapWithError___block_invoke_349(v27);
        goto LABEL_3;
      }

      if (v14 != 100)
      {
        v8 = 0;
        goto LABEL_4;
      }

      v15 = sqlite3_column_text(ppStmt, 0);
      if (v15)
      {
        v16 = v15;
        v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v15];
        if (!v17)
        {
          v26[0] = MEMORY[0x1E69E9820];
          v26[1] = 3221225472;
          v26[2] = __39__MCMSQLiteDB_childParentMapWithError___block_invoke_352;
          v26[3] = &__block_descriptor_40_e14___NSError_8__0l;
          v26[4] = v16;
          v7 = __39__MCMSQLiteDB_childParentMapWithError___block_invoke_352(v26);
          goto LABEL_3;
        }
      }

      else
      {
        v17 = 0;
      }

      v18 = sqlite3_column_text(ppStmt, 1);
      if (v18)
      {
        v19 = v18;
        v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v18];
        if (!v20)
        {
          v25[0] = MEMORY[0x1E69E9820];
          v25[1] = 3221225472;
          v25[2] = __39__MCMSQLiteDB_childParentMapWithError___block_invoke_358;
          v25[3] = &__block_descriptor_40_e14___NSError_8__0l;
          v25[4] = v19;
          v8 = __39__MCMSQLiteDB_childParentMapWithError___block_invoke_358(v25);

          goto LABEL_4;
        }

        v21 = v20;
        if (v17)
        {
          [v5 setObject:v20 forKeyedSubscript:v17];
        }
      }

      else
      {
        v21 = 0;
      }
    }
  }

  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __39__MCMSQLiteDB_childParentMapWithError___block_invoke;
  v28[3] = &unk_1E86B0B48;
  v28[4] = self;
  v28[5] = v6;
  v7 = __39__MCMSQLiteDB_childParentMapWithError___block_invoke(v28);
LABEL_3:
  v8 = v7;
LABEL_4:
  if (ppStmt && sqlite3_finalize(ppStmt))
  {
    v9 = container_log_handle_for_category();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v22 = [(MCMSQLiteDB *)self url];
      path = [v22 path];
      v24 = sqlite3_extended_errcode(v6);
      *buf = 138412546;
      v31 = path;
      v32 = 1024;
      v33 = v24;
      _os_log_error_impl(&dword_1DF2C3000, v9, OS_LOG_TYPE_ERROR, "sqlite3_finalize for %@ failed: %d", buf, 0x12u);
    }
  }

  if (error && !v5)
  {
    v10 = v8;
    *error = v8;
  }

  v11 = [v5 copy];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

id __39__MCMSQLiteDB_childParentMapWithError___block_invoke(uint64_t a1)
{
  v16[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) url];
  v4 = [v3 path];
  v5 = [v2 initWithFormat:@"sqlite3_prepare(select) for %@ failed: %d", v4, sqlite3_extended_errcode(*(a1 + 40))];

  v15[0] = @"FunctionName";
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB childParentMapWithError:]_block_invoke"];
  v16[0] = v6;
  v16[1] = &unk_1F5A76ED0;
  v7 = *MEMORY[0x1E696A578];
  v15[1] = @"SourceFileLine";
  v15[2] = v7;
  v16[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:3];

  v9 = container_log_handle_for_category();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v14 = v5;
    _os_log_error_impl(&dword_1DF2C3000, v9, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:66 userInfo:v8];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

id __39__MCMSQLiteDB_childParentMapWithError___block_invoke_349(uint64_t a1)
{
  v16[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) url];
  v4 = [v3 path];
  v5 = [v2 initWithFormat:@"sqlite3_step for %@ failed: %d", v4, sqlite3_extended_errcode(*(a1 + 40))];

  v15[0] = @"FunctionName";
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB childParentMapWithError:]_block_invoke"];
  v16[0] = v6;
  v16[1] = &unk_1F5A76EE8;
  v7 = *MEMORY[0x1E696A578];
  v15[1] = @"SourceFileLine";
  v15[2] = v7;
  v16[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:3];

  v9 = container_log_handle_for_category();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v14 = v5;
    _os_log_error_impl(&dword_1DF2C3000, v9, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:66 userInfo:v8];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

id __39__MCMSQLiteDB_childParentMapWithError___block_invoke_352(uint64_t a1)
{
  v12[3] = *MEMORY[0x1E69E9840];
  v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Failed to allocate childIdentifier for text: %s", *(a1 + 32)];
  v11[0] = @"FunctionName";
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB childParentMapWithError:]_block_invoke"];
  v12[0] = v2;
  v12[1] = &unk_1F5A76F00;
  v3 = *MEMORY[0x1E696A578];
  v11[1] = @"SourceFileLine";
  v11[2] = v3;
  v12[2] = v1;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];

  v5 = container_log_handle_for_category();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v10 = v1;
    _os_log_error_impl(&dword_1DF2C3000, v5, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:73 userInfo:v4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

id __39__MCMSQLiteDB_childParentMapWithError___block_invoke_358(uint64_t a1)
{
  v12[3] = *MEMORY[0x1E69E9840];
  v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Failed to allocate parentIdentifier for text: %s", *(a1 + 32)];
  v11[0] = @"FunctionName";
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB childParentMapWithError:]_block_invoke"];
  v12[0] = v2;
  v12[1] = &unk_1F5A76F18;
  v3 = *MEMORY[0x1E696A578];
  v11[1] = @"SourceFileLine";
  v11[2] = v3;
  v12[2] = v1;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];

  v5 = container_log_handle_for_category();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v10 = v1;
    _os_log_error_impl(&dword_1DF2C3000, v5, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:73 userInfo:v4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (BOOL)deleteAllAdvanceCopiesOfCodeSigningEntriesWithError:(id *)error
{
  v28 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  ppStmt = 0;
  v5 = [(MCMSQLiteDB *)self db];
  if (sqlite3_prepare_v2(v5, "DELETE FROM code_signing_info WHERE (placeholder & ?) > 0;", -1, &ppStmt, 0))
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __67__MCMSQLiteDB_deleteAllAdvanceCopiesOfCodeSigningEntriesWithError___block_invoke;
    v22[3] = &unk_1E86B0B48;
    v22[4] = self;
    v22[5] = v5;
    v6 = __67__MCMSQLiteDB_deleteAllAdvanceCopiesOfCodeSigningEntriesWithError___block_invoke(v22);
LABEL_12:
    v10 = v6;
    v11 = 0;
    goto LABEL_13;
  }

  if (sqlite3_bind_int(ppStmt, 1, 2))
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __67__MCMSQLiteDB_deleteAllAdvanceCopiesOfCodeSigningEntriesWithError___block_invoke_336;
    v21[3] = &unk_1E86B0B48;
    v21[4] = self;
    v21[5] = v5;
    v6 = __67__MCMSQLiteDB_deleteAllAdvanceCopiesOfCodeSigningEntriesWithError___block_invoke_336(v21);
    goto LABEL_12;
  }

  if (sqlite3_step(ppStmt) != 101)
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __67__MCMSQLiteDB_deleteAllAdvanceCopiesOfCodeSigningEntriesWithError___block_invoke_342;
    v20[3] = &unk_1E86B0B48;
    v20[4] = self;
    v20[5] = v5;
    v6 = __67__MCMSQLiteDB_deleteAllAdvanceCopiesOfCodeSigningEntriesWithError___block_invoke_342(v20);
    goto LABEL_12;
  }

  v7 = sqlite3_changes(v5);
  if (v7 >= 1)
  {
    v8 = v7;
    v9 = container_log_handle_for_category();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v25) = v8;
      _os_log_error_impl(&dword_1DF2C3000, v9, OS_LOG_TYPE_ERROR, "Deleted %d advance copies of code signing info.", buf, 8u);
    }
  }

  v10 = 0;
  v11 = 1;
LABEL_13:
  if (ppStmt && sqlite3_finalize(ppStmt))
  {
    v12 = container_log_handle_for_category();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v17 = [(MCMSQLiteDB *)self url];
      path = [v17 path];
      v19 = sqlite3_extended_errcode(v5);
      *buf = 138412546;
      v25 = path;
      v26 = 1024;
      v27 = v19;
      _os_log_error_impl(&dword_1DF2C3000, v12, OS_LOG_TYPE_ERROR, "sqlite3_finalize for %@ failed: %d", buf, 0x12u);
    }
  }

  if (error)
  {
    v13 = v11;
  }

  else
  {
    v13 = 1;
  }

  if ((v13 & 1) == 0)
  {
    v14 = v10;
    *error = v10;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v11;
}

id __67__MCMSQLiteDB_deleteAllAdvanceCopiesOfCodeSigningEntriesWithError___block_invoke(uint64_t a1)
{
  v16[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) url];
  v4 = [v3 path];
  v5 = [v2 initWithFormat:@"sqlite3_prepare(delete) for %@ failed: %d", v4, sqlite3_extended_errcode(*(a1 + 40))];

  v15[0] = @"FunctionName";
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB deleteAllAdvanceCopiesOfCodeSigningEntriesWithError:]_block_invoke"];
  v16[0] = v6;
  v16[1] = &unk_1F5A76E88;
  v7 = *MEMORY[0x1E696A578];
  v15[1] = @"SourceFileLine";
  v15[2] = v7;
  v16[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:3];

  v9 = container_log_handle_for_category();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v14 = v5;
    _os_log_error_impl(&dword_1DF2C3000, v9, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:66 userInfo:v8];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

id __67__MCMSQLiteDB_deleteAllAdvanceCopiesOfCodeSigningEntriesWithError___block_invoke_336(uint64_t a1)
{
  v16[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) url];
  v4 = [v3 path];
  v5 = [v2 initWithFormat:@"sqlite3_bind_text for flags=%d at %@ failed: %d", 2, v4, sqlite3_extended_errcode(*(a1 + 40))];

  v15[0] = @"FunctionName";
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB deleteAllAdvanceCopiesOfCodeSigningEntriesWithError:]_block_invoke"];
  v16[0] = v6;
  v16[1] = &unk_1F5A76EA0;
  v7 = *MEMORY[0x1E696A578];
  v15[1] = @"SourceFileLine";
  v15[2] = v7;
  v16[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:3];

  v9 = container_log_handle_for_category();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v14 = v5;
    _os_log_error_impl(&dword_1DF2C3000, v9, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:66 userInfo:v8];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

id __67__MCMSQLiteDB_deleteAllAdvanceCopiesOfCodeSigningEntriesWithError___block_invoke_342(uint64_t a1)
{
  v16[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) url];
  v4 = [v3 path];
  v5 = [v2 initWithFormat:@"sqlite3_step for %@ failed: %d", v4, sqlite3_extended_errcode(*(a1 + 40))];

  v15[0] = @"FunctionName";
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB deleteAllAdvanceCopiesOfCodeSigningEntriesWithError:]_block_invoke"];
  v16[0] = v6;
  v16[1] = &unk_1F5A76EB8;
  v7 = *MEMORY[0x1E696A578];
  v15[1] = @"SourceFileLine";
  v15[2] = v7;
  v16[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:3];

  v9 = container_log_handle_for_category();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v14 = v5;
    _os_log_error_impl(&dword_1DF2C3000, v9, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:66 userInfo:v8];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)parentIdentifierForChildIdentifier:(id)identifier error:(id *)error
{
  v36 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  dispatch_assert_queue_V2(self->_queue);
  ppStmt = 0;
  v7 = [(MCMSQLiteDB *)self db];
  if (sqlite3_prepare_v2(v7, "SELECT code_signing_info.code_signing_id_text FROM child_bundles, code_signing_info WHERE child_bundles.child_code_signing_id_text = ? AND child_bundles.parent_id=code_signing_info.id;", -1, &ppStmt, 0))
  {
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __56__MCMSQLiteDB_parentIdentifierForChildIdentifier_error___block_invoke;
    v30[3] = &unk_1E86B0B48;
    v30[4] = self;
    v30[5] = v7;
    v8 = __56__MCMSQLiteDB_parentIdentifierForChildIdentifier_error___block_invoke(v30);
LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  if (sqlite3_bind_text(ppStmt, 1, [identifierCopy UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL))
  {
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __56__MCMSQLiteDB_parentIdentifierForChildIdentifier_error___block_invoke_309;
    v26[3] = &unk_1E86B0B20;
    v27 = identifierCopy;
    selfCopy = self;
    v29 = v7;
    v8 = __56__MCMSQLiteDB_parentIdentifierForChildIdentifier_error___block_invoke_309(v26);

    goto LABEL_5;
  }

  v9 = 0;
  while (1)
  {
    v14 = sqlite3_step(ppStmt);
    if ((v14 - 102) <= 0xFFFFFFFD)
    {
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __56__MCMSQLiteDB_parentIdentifierForChildIdentifier_error___block_invoke_315;
      v25[3] = &unk_1E86B0B48;
      v25[4] = self;
      v25[5] = v7;
      v18 = __56__MCMSQLiteDB_parentIdentifierForChildIdentifier_error___block_invoke_315(v25);
      goto LABEL_28;
    }

    if (v14 != 100)
    {
      break;
    }

    v15 = sqlite3_column_text(ppStmt, 0);
    if (v15)
    {
      v16 = v15;
      v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v15];

      v9 = v17;
      if (!v17)
      {
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = __56__MCMSQLiteDB_parentIdentifierForChildIdentifier_error___block_invoke_318;
        v24[3] = &__block_descriptor_40_e14___NSError_8__0l;
        v24[4] = v16;
        v18 = __56__MCMSQLiteDB_parentIdentifierForChildIdentifier_error___block_invoke_318(v24);
LABEL_28:
        v8 = v18;
        goto LABEL_6;
      }
    }
  }

  v8 = 0;
LABEL_6:
  if (ppStmt && sqlite3_finalize(ppStmt))
  {
    v10 = container_log_handle_for_category();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v19 = [(MCMSQLiteDB *)self url];
      path = [v19 path];
      v21 = sqlite3_extended_errcode(v7);
      *buf = 138412546;
      v33 = path;
      v34 = 1024;
      v35 = v21;
      _os_log_error_impl(&dword_1DF2C3000, v10, OS_LOG_TYPE_ERROR, "sqlite3_finalize for %@ failed: %d", buf, 0x12u);
    }
  }

  if (!v8)
  {
    if (v9)
    {
      v8 = 0;
      goto LABEL_17;
    }

    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __56__MCMSQLiteDB_parentIdentifierForChildIdentifier_error___block_invoke_324;
    v22[3] = &unk_1E86B0B98;
    v23 = identifierCopy;
    v8 = __56__MCMSQLiteDB_parentIdentifierForChildIdentifier_error___block_invoke_324(v22);
    v9 = v23;
  }

  if (error)
  {
    v11 = v8;
    v9 = 0;
    *error = v8;
  }

  else
  {
    v9 = 0;
  }

LABEL_17:

  v12 = *MEMORY[0x1E69E9840];

  return v9;
}

id __56__MCMSQLiteDB_parentIdentifierForChildIdentifier_error___block_invoke(uint64_t a1)
{
  v16[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) url];
  v4 = [v3 path];
  v5 = [v2 initWithFormat:@"sqlite3_prepare(select) for %@ failed: %d", v4, sqlite3_extended_errcode(*(a1 + 40))];

  v15[0] = @"FunctionName";
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB parentIdentifierForChildIdentifier:error:]_block_invoke"];
  v16[0] = v6;
  v16[1] = &unk_1F5A76E10;
  v7 = *MEMORY[0x1E696A578];
  v15[1] = @"SourceFileLine";
  v15[2] = v7;
  v16[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:3];

  v9 = container_log_handle_for_category();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v14 = v5;
    _os_log_error_impl(&dword_1DF2C3000, v9, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:66 userInfo:v8];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

id __56__MCMSQLiteDB_parentIdentifierForChildIdentifier_error___block_invoke_309(uint64_t a1)
{
  v17[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) url];
  v5 = [v4 path];
  v6 = [v2 initWithFormat:@"sqlite3_bind_text for child_code_signing_id_text=%@ at %@ failed: %s", v3, v5, sqlite3_errmsg(*(a1 + 48))];

  v16[0] = @"FunctionName";
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB parentIdentifierForChildIdentifier:error:]_block_invoke"];
  v17[0] = v7;
  v17[1] = &unk_1F5A76E28;
  v8 = *MEMORY[0x1E696A578];
  v16[1] = @"SourceFileLine";
  v16[2] = v8;
  v17[2] = v6;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:3];

  v10 = container_log_handle_for_category();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v15 = v6;
    _os_log_error_impl(&dword_1DF2C3000, v10, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:66 userInfo:v9];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

id __56__MCMSQLiteDB_parentIdentifierForChildIdentifier_error___block_invoke_315(uint64_t a1)
{
  v16[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) url];
  v4 = [v3 path];
  v5 = [v2 initWithFormat:@"sqlite3_step for %@ failed: %d", v4, sqlite3_extended_errcode(*(a1 + 40))];

  v15[0] = @"FunctionName";
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB parentIdentifierForChildIdentifier:error:]_block_invoke"];
  v16[0] = v6;
  v16[1] = &unk_1F5A76E40;
  v7 = *MEMORY[0x1E696A578];
  v15[1] = @"SourceFileLine";
  v15[2] = v7;
  v16[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:3];

  v9 = container_log_handle_for_category();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v14 = v5;
    _os_log_error_impl(&dword_1DF2C3000, v9, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:66 userInfo:v8];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

id __56__MCMSQLiteDB_parentIdentifierForChildIdentifier_error___block_invoke_318(uint64_t a1)
{
  v12[3] = *MEMORY[0x1E69E9840];
  v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Failed to allocate parentIdentifier for text: %s", *(a1 + 32)];
  v11[0] = @"FunctionName";
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB parentIdentifierForChildIdentifier:error:]_block_invoke"];
  v12[0] = v2;
  v12[1] = &unk_1F5A76E58;
  v3 = *MEMORY[0x1E696A578];
  v11[1] = @"SourceFileLine";
  v11[2] = v3;
  v12[2] = v1;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];

  v5 = container_log_handle_for_category();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v10 = v1;
    _os_log_error_impl(&dword_1DF2C3000, v5, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:73 userInfo:v4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

id __56__MCMSQLiteDB_parentIdentifierForChildIdentifier_error___block_invoke_324(uint64_t a1)
{
  v9[3] = *MEMORY[0x1E69E9840];
  v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Parent identifier for: %@ Not Found in DB", *(a1 + 32)];
  v8[0] = @"FunctionName";
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB parentIdentifierForChildIdentifier:error:]_block_invoke"];
  v9[0] = v2;
  v9[1] = &unk_1F5A76E70;
  v3 = *MEMORY[0x1E696A578];
  v8[1] = @"SourceFileLine";
  v8[2] = v3;
  v9[2] = v1;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:3];

  v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:67 userInfo:v4];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)childIdentifiersForParentIdentifier:(id)identifier error:(id *)error
{
  v40 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  dispatch_assert_queue_V2(self->_queue);
  ppStmt = 0;
  v7 = [(MCMSQLiteDB *)self db];
  if (sqlite3_prepare_v2(v7, "SELECT child_bundles.child_code_signing_id_text FROM child_bundles, code_signing_info WHERE code_signing_info.code_signing_id_text = ? AND child_bundles.parent_id=code_signing_info.id;", -1, &ppStmt, 0))
  {
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __57__MCMSQLiteDB_childIdentifiersForParentIdentifier_error___block_invoke;
    v34[3] = &unk_1E86B0B48;
    v34[4] = self;
    v34[5] = v7;
    v8 = __57__MCMSQLiteDB_childIdentifiersForParentIdentifier_error___block_invoke(v34);
LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  if (sqlite3_bind_text(ppStmt, 1, [identifierCopy UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL))
  {
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __57__MCMSQLiteDB_childIdentifiersForParentIdentifier_error___block_invoke_280;
    v30[3] = &unk_1E86B0B20;
    v31 = identifierCopy;
    selfCopy = self;
    v33 = v7;
    v8 = __57__MCMSQLiteDB_childIdentifiersForParentIdentifier_error___block_invoke_280(v30);

    goto LABEL_5;
  }

  v9 = 0;
  while (1)
  {
    do
    {
      v15 = sqlite3_step(ppStmt);
      if ((v15 - 102) <= 0xFFFFFFFD)
      {
        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 3221225472;
        v29[2] = __57__MCMSQLiteDB_childIdentifiersForParentIdentifier_error___block_invoke_283;
        v29[3] = &unk_1E86B0B48;
        v29[4] = self;
        v29[5] = v7;
        v8 = __57__MCMSQLiteDB_childIdentifiersForParentIdentifier_error___block_invoke_283(v29);
        goto LABEL_6;
      }

      if (v15 != 100)
      {
        v8 = 0;
        goto LABEL_6;
      }

      v16 = sqlite3_column_text(ppStmt, 0);
    }

    while (!v16);
    v17 = v16;
    v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v16];
    if (!v18)
    {
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __57__MCMSQLiteDB_childIdentifiersForParentIdentifier_error___block_invoke_286;
      v28[3] = &__block_descriptor_40_e14___NSError_8__0l;
      v28[4] = v17;
      v22 = __57__MCMSQLiteDB_childIdentifiersForParentIdentifier_error___block_invoke_286(v28);
      goto LABEL_33;
    }

    if (!v9)
    {
      v9 = objc_opt_new();
      if (!v9)
      {
        break;
      }
    }

    [v9 addObject:v18];
  }

  v22 = __57__MCMSQLiteDB_childIdentifiersForParentIdentifier_error___block_invoke_292();
LABEL_33:
  v8 = v22;

LABEL_6:
  if (ppStmt && sqlite3_finalize(ppStmt))
  {
    v10 = container_log_handle_for_category();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v19 = [(MCMSQLiteDB *)self url];
      path = [v19 path];
      v21 = sqlite3_extended_errcode(v7);
      *buf = 138412546;
      v37 = path;
      v38 = 1024;
      v39 = v21;
      _os_log_error_impl(&dword_1DF2C3000, v10, OS_LOG_TYPE_ERROR, "sqlite3_finalize for %@ failed: %d", buf, 0x12u);
    }
  }

  if (!v8)
  {
    if (v9)
    {
      v8 = 0;
      goto LABEL_17;
    }

    v23 = MEMORY[0x1E69E9820];
    v24 = 3221225472;
    v25 = __57__MCMSQLiteDB_childIdentifiersForParentIdentifier_error___block_invoke_300;
    v26 = &unk_1E86B0B98;
    v27 = identifierCopy;
    v8 = __57__MCMSQLiteDB_childIdentifiersForParentIdentifier_error___block_invoke_300(&v23);
    v9 = v27;
  }

  if (error)
  {
    v11 = v8;
    v9 = 0;
    *error = v8;
  }

  else
  {
    v9 = 0;
  }

LABEL_17:
  v12 = [v9 copy];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

id __57__MCMSQLiteDB_childIdentifiersForParentIdentifier_error___block_invoke(uint64_t a1)
{
  v16[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) url];
  v4 = [v3 path];
  v5 = [v2 initWithFormat:@"sqlite3_prepare(select) for %@ failed: %d", v4, sqlite3_extended_errcode(*(a1 + 40))];

  v15[0] = @"FunctionName";
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB childIdentifiersForParentIdentifier:error:]_block_invoke"];
  v16[0] = v6;
  v16[1] = &unk_1F5A76D80;
  v7 = *MEMORY[0x1E696A578];
  v15[1] = @"SourceFileLine";
  v15[2] = v7;
  v16[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:3];

  v9 = container_log_handle_for_category();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v14 = v5;
    _os_log_error_impl(&dword_1DF2C3000, v9, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:66 userInfo:v8];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

id __57__MCMSQLiteDB_childIdentifiersForParentIdentifier_error___block_invoke_280(uint64_t a1)
{
  v17[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) url];
  v5 = [v4 path];
  v6 = [v2 initWithFormat:@"sqlite3_bind_text for code_signing_id_text=%@ at %@ failed: %d", v3, v5, sqlite3_extended_errcode(*(a1 + 48))];

  v16[0] = @"FunctionName";
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB childIdentifiersForParentIdentifier:error:]_block_invoke"];
  v17[0] = v7;
  v17[1] = &unk_1F5A76D98;
  v8 = *MEMORY[0x1E696A578];
  v16[1] = @"SourceFileLine";
  v16[2] = v8;
  v17[2] = v6;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:3];

  v10 = container_log_handle_for_category();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v15 = v6;
    _os_log_error_impl(&dword_1DF2C3000, v10, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:66 userInfo:v9];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

id __57__MCMSQLiteDB_childIdentifiersForParentIdentifier_error___block_invoke_283(uint64_t a1)
{
  v16[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) url];
  v4 = [v3 path];
  v5 = [v2 initWithFormat:@"sqlite3_step for %@ failed: %d", v4, sqlite3_extended_errcode(*(a1 + 40))];

  v15[0] = @"FunctionName";
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB childIdentifiersForParentIdentifier:error:]_block_invoke"];
  v16[0] = v6;
  v16[1] = &unk_1F5A76DB0;
  v7 = *MEMORY[0x1E696A578];
  v15[1] = @"SourceFileLine";
  v15[2] = v7;
  v16[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:3];

  v9 = container_log_handle_for_category();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v14 = v5;
    _os_log_error_impl(&dword_1DF2C3000, v9, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:66 userInfo:v8];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

id __57__MCMSQLiteDB_childIdentifiersForParentIdentifier_error___block_invoke_286(uint64_t a1)
{
  v12[3] = *MEMORY[0x1E69E9840];
  v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Failed to allocate thisChildBundleId for text: %s", *(a1 + 32)];
  v11[0] = @"FunctionName";
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB childIdentifiersForParentIdentifier:error:]_block_invoke"];
  v12[0] = v2;
  v12[1] = &unk_1F5A76DC8;
  v3 = *MEMORY[0x1E696A578];
  v11[1] = @"SourceFileLine";
  v11[2] = v3;
  v12[2] = v1;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];

  v5 = container_log_handle_for_category();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v10 = v1;
    _os_log_error_impl(&dword_1DF2C3000, v5, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:73 userInfo:v4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

id __57__MCMSQLiteDB_childIdentifiersForParentIdentifier_error___block_invoke_292()
{
  v11[3] = *MEMORY[0x1E69E9840];
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Failed to allocate childBundleIds"];
  v10[0] = @"FunctionName";
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB childIdentifiersForParentIdentifier:error:]_block_invoke"];
  v11[0] = v1;
  v11[1] = &unk_1F5A76DE0;
  v2 = *MEMORY[0x1E696A578];
  v10[1] = @"SourceFileLine";
  v10[2] = v2;
  v11[2] = v0;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:3];

  v4 = container_log_handle_for_category();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v8 = 138543362;
    v9 = v0;
    _os_log_error_impl(&dword_1DF2C3000, v4, OS_LOG_TYPE_ERROR, "%{public}@", &v8, 0xCu);
  }

  v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:73 userInfo:v3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

id __57__MCMSQLiteDB_childIdentifiersForParentIdentifier_error___block_invoke_300(uint64_t a1)
{
  v9[3] = *MEMORY[0x1E69E9840];
  v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Children for parent identifier: %@ Not Found in DB", *(a1 + 32)];
  v8[0] = @"FunctionName";
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB childIdentifiersForParentIdentifier:error:]_block_invoke"];
  v9[0] = v2;
  v9[1] = &unk_1F5A76DF8;
  v3 = *MEMORY[0x1E696A578];
  v8[1] = @"SourceFileLine";
  v8[2] = v3;
  v9[2] = v1;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:3];

  v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:67 userInfo:v4];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)identifiersWithError:(id *)error
{
  v31 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  ppStmt = 0;
  v5 = [(MCMSQLiteDB *)self db];
  v6 = [MEMORY[0x1E695DFA8] set];
  if (!sqlite3_prepare_v2(v5, "SELECT code_signing_info.code_signing_id_text FROM code_signing_info;", -1, &ppStmt, 0))
  {
    while (1)
    {
      v15 = sqlite3_step(ppStmt);
      if ((v15 - 102) <= 0xFFFFFFFD)
      {
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = __36__MCMSQLiteDB_identifiersWithError___block_invoke_271;
        v24[3] = &unk_1E86B0B48;
        v24[4] = self;
        v24[5] = v5;
        v7 = __36__MCMSQLiteDB_identifiersWithError___block_invoke_271(v24);
        goto LABEL_3;
      }

      if (v15 != 100)
      {
        v8 = 0;
        goto LABEL_4;
      }

      v16 = sqlite3_column_text(ppStmt, 0);
      if (v16)
      {
        v17 = v16;
        v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v16];
        if (!v18)
        {
          v23[0] = MEMORY[0x1E69E9820];
          v23[1] = 3221225472;
          v23[2] = __36__MCMSQLiteDB_identifiersWithError___block_invoke_274;
          v23[3] = &__block_descriptor_40_e14___NSError_8__0l;
          v23[4] = v17;
          v7 = __36__MCMSQLiteDB_identifiersWithError___block_invoke_274(v23);
          goto LABEL_3;
        }

        v19 = v18;
        [v6 addObject:v18];
      }

      else
      {
        v19 = container_log_handle_for_category();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_1DF2C3000, v19, OS_LOG_TYPE_ERROR, "Error retrieving code_signing_id_text from DB", buf, 2u);
        }
      }
    }
  }

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __36__MCMSQLiteDB_identifiersWithError___block_invoke;
  v25[3] = &unk_1E86B0B48;
  v25[4] = self;
  v25[5] = v5;
  v7 = __36__MCMSQLiteDB_identifiersWithError___block_invoke(v25);
LABEL_3:
  v8 = v7;
LABEL_4:
  if (ppStmt && sqlite3_finalize(ppStmt))
  {
    v9 = container_log_handle_for_category();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v20 = [(MCMSQLiteDB *)self url];
      path = [v20 path];
      v22 = sqlite3_extended_errcode(v5);
      *buf = 138412546;
      v28 = path;
      v29 = 1024;
      v30 = v22;
      _os_log_error_impl(&dword_1DF2C3000, v9, OS_LOG_TYPE_ERROR, "sqlite3_finalize for %@ failed: %d", buf, 0x12u);
    }
  }

  v10 = [v6 count];
  if (error && !v10)
  {

    v11 = v8;
    v6 = 0;
    *error = v8;
  }

  v12 = [v6 copy];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

id __36__MCMSQLiteDB_identifiersWithError___block_invoke(uint64_t a1)
{
  v16[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) url];
  v4 = [v3 path];
  v5 = [v2 initWithFormat:@"sqlite3_prepare(select) for %@ failed: %d", v4, sqlite3_extended_errcode(*(a1 + 40))];

  v15[0] = @"FunctionName";
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB identifiersWithError:]_block_invoke"];
  v16[0] = v6;
  v16[1] = &unk_1F5A76D38;
  v7 = *MEMORY[0x1E696A578];
  v15[1] = @"SourceFileLine";
  v15[2] = v7;
  v16[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:3];

  v9 = container_log_handle_for_category();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v14 = v5;
    _os_log_error_impl(&dword_1DF2C3000, v9, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:66 userInfo:v8];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

id __36__MCMSQLiteDB_identifiersWithError___block_invoke_271(uint64_t a1)
{
  v16[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) url];
  v4 = [v3 path];
  v5 = [v2 initWithFormat:@"sqlite3_step for %@ failed: %d", v4, sqlite3_extended_errcode(*(a1 + 40))];

  v15[0] = @"FunctionName";
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB identifiersWithError:]_block_invoke"];
  v16[0] = v6;
  v16[1] = &unk_1F5A76D50;
  v7 = *MEMORY[0x1E696A578];
  v15[1] = @"SourceFileLine";
  v15[2] = v7;
  v16[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:3];

  v9 = container_log_handle_for_category();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v14 = v5;
    _os_log_error_impl(&dword_1DF2C3000, v9, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:66 userInfo:v8];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

id __36__MCMSQLiteDB_identifiersWithError___block_invoke_274(uint64_t a1)
{
  v12[3] = *MEMORY[0x1E69E9840];
  v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Failed to allocate identifier for text: %s", *(a1 + 32)];
  v11[0] = @"FunctionName";
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB identifiersWithError:]_block_invoke"];
  v12[0] = v2;
  v12[1] = &unk_1F5A76D68;
  v3 = *MEMORY[0x1E696A578];
  v11[1] = @"SourceFileLine";
  v11[2] = v3;
  v12[2] = v1;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];

  v5 = container_log_handle_for_category();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v10 = v1;
    _os_log_error_impl(&dword_1DF2C3000, v5, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:73 userInfo:v4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)enumerateIdentifiersAndCodeSigningInfoUsingBlock:(id)block
{
  v49 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  dispatch_assert_queue_V2(self->_queue);
  ppStmt = 0;
  v5 = [(MCMSQLiteDB *)self db];
  v36 = blockCopy;
  db = v5;
  if (!sqlite3_prepare_v2(v5, "SELECT code_signing_data.data, code_signing_info.invalid, code_signing_info.placeholder, code_signing_info.registered_by_caller, code_signing_info.data_container_class, code_signing_info.code_signing_id_text FROM code_signing_info, code_signing_data WHERE code_signing_info.id = code_signing_data.cs_info_id;", -1, &ppStmt, 0))
  {
    v7 = 0;
    v35 = *MEMORY[0x1E696A578];
    *&v6 = 138543362;
    v33 = v6;
    while (1)
    {
      v11 = objc_autoreleasePoolPush();
      v12 = sqlite3_step(ppStmt);
      if ((v12 - 102) <= 0xFFFFFFFD)
      {
        v42[0] = MEMORY[0x1E69E9820];
        v42[1] = 3221225472;
        v42[2] = __64__MCMSQLiteDB_enumerateIdentifiersAndCodeSigningInfoUsingBlock___block_invoke_244;
        v42[3] = &unk_1E86B0B48;
        v42[4] = self;
        v42[5] = db;
        v29 = __64__MCMSQLiteDB_enumerateIdentifiersAndCodeSigningInfoUsingBlock___block_invoke_244(v42);

        objc_autoreleasePoolPop(v11);
        v7 = v29;
        goto LABEL_3;
      }

      if (v12 != 100)
      {
        objc_autoreleasePoolPop(v11);
        goto LABEL_3;
      }

      v41 = 0;
      v13 = [(MCMSQLiteDB *)self _codeSigningEntryFromStatementRow:ppStmt error:&v41];
      v14 = v41;
      if (v13)
      {
        break;
      }

      v22 = 0;
LABEL_31:

      objc_autoreleasePoolPop(v11);
      if (v22)
      {
        goto LABEL_3;
      }
    }

    v15 = sqlite3_column_text(ppStmt, 5);
    if (!v15)
    {
      v19 = v7;
      v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Error retrieving code_signing_id_text from DB"];
      v47[0] = @"FunctionName";
      v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB enumerateIdentifiersAndCodeSigningInfoUsingBlock:]_block_invoke"];
      *v48 = v24;
      *&v48[8] = &unk_1F5A76CF0;
      v47[1] = @"SourceFileLine";
      v47[2] = v35;
      *&v48[16] = v23;
      v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:v47 count:3];

      v26 = container_log_handle_for_category();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = v33;
        v46 = v23;
        _os_log_error_impl(&dword_1DF2C3000, v26, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      v21 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:66 userInfo:v25];

      v22 = 0;
      v18 = v14;
      goto LABEL_23;
    }

    v16 = v15;
    v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v15];
    if (!v17)
    {
      v40[0] = MEMORY[0x1E69E9820];
      v40[1] = 3221225472;
      v40[2] = __64__MCMSQLiteDB_enumerateIdentifiersAndCodeSigningInfoUsingBlock___block_invoke_255;
      v40[3] = &__block_descriptor_40_e14___NSError_8__0l;
      v40[4] = v16;
      __64__MCMSQLiteDB_enumerateIdentifiersAndCodeSigningInfoUsingBlock___block_invoke_255(v40);
      v18 = v7;
      v7 = v22 = 1;
      goto LABEL_30;
    }

    v18 = v17;
    v19 = v7;
    v39 = v14;
    v20 = [(MCMSQLiteDB *)self childIdentifiersForParentIdentifier:v17 error:&v39];
    v21 = v39;

    if (v20)
    {
LABEL_18:
      [v13 setChildBundleIdentifiers:{v20, v33}];
      (v36)[2](v36, v18, v13);

      v22 = 0;
      v18 = v20;
LABEL_23:
      v14 = v21;
      v7 = v19;
LABEL_30:

      goto LABEL_31;
    }

    domain = [v21 domain];
    if ([domain isEqualToString:@"MCMErrorDomain"])
    {
      code = [v21 code];

      if (code == 67)
      {

        v21 = 0;
        goto LABEL_18;
      }
    }

    else
    {
    }

    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __64__MCMSQLiteDB_enumerateIdentifiersAndCodeSigningInfoUsingBlock___block_invoke_261;
    v37[3] = &unk_1E86B0B98;
    v14 = v21;
    v38 = v14;
    v7 = __64__MCMSQLiteDB_enumerateIdentifiersAndCodeSigningInfoUsingBlock___block_invoke_261(v37);

    v22 = 0;
    goto LABEL_30;
  }

  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __64__MCMSQLiteDB_enumerateIdentifiersAndCodeSigningInfoUsingBlock___block_invoke;
  v43[3] = &unk_1E86B0B48;
  v43[4] = self;
  v43[5] = v5;
  v7 = __64__MCMSQLiteDB_enumerateIdentifiersAndCodeSigningInfoUsingBlock___block_invoke(v43);
LABEL_3:
  if (ppStmt && sqlite3_finalize(ppStmt))
  {
    v8 = container_log_handle_for_category();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v30 = [(MCMSQLiteDB *)self url];
      path = [v30 path];
      v32 = sqlite3_extended_errcode(db);
      *v48 = 138412546;
      *&v48[4] = path;
      *&v48[12] = 1024;
      *&v48[14] = v32;
      _os_log_error_impl(&dword_1DF2C3000, v8, OS_LOG_TYPE_ERROR, "sqlite3_finalize for %@ failed: %d", v48, 0x12u);
    }
  }

  v9 = *MEMORY[0x1E69E9840];

  return v7;
}

id __64__MCMSQLiteDB_enumerateIdentifiersAndCodeSigningInfoUsingBlock___block_invoke(uint64_t a1)
{
  v16[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) url];
  v4 = [v3 path];
  v5 = [v2 initWithFormat:@"sqlite3_prepare(select) for %@ failed: %d", v4, sqlite3_extended_errcode(*(a1 + 40))];

  v15[0] = @"FunctionName";
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB enumerateIdentifiersAndCodeSigningInfoUsingBlock:]_block_invoke"];
  v16[0] = v6;
  v16[1] = &unk_1F5A76CC0;
  v7 = *MEMORY[0x1E696A578];
  v15[1] = @"SourceFileLine";
  v15[2] = v7;
  v16[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:3];

  v9 = container_log_handle_for_category();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v14 = v5;
    _os_log_error_impl(&dword_1DF2C3000, v9, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:66 userInfo:v8];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

id __64__MCMSQLiteDB_enumerateIdentifiersAndCodeSigningInfoUsingBlock___block_invoke_244(uint64_t a1)
{
  v16[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) url];
  v4 = [v3 path];
  v5 = [v2 initWithFormat:@"sqlite3_step for %@ failed: %d", v4, sqlite3_extended_errcode(*(a1 + 40))];

  v15[0] = @"FunctionName";
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB enumerateIdentifiersAndCodeSigningInfoUsingBlock:]_block_invoke"];
  v16[0] = v6;
  v16[1] = &unk_1F5A76CD8;
  v7 = *MEMORY[0x1E696A578];
  v15[1] = @"SourceFileLine";
  v15[2] = v7;
  v16[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:3];

  v9 = container_log_handle_for_category();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v14 = v5;
    _os_log_error_impl(&dword_1DF2C3000, v9, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:66 userInfo:v8];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

id __64__MCMSQLiteDB_enumerateIdentifiersAndCodeSigningInfoUsingBlock___block_invoke_255(uint64_t a1)
{
  v12[3] = *MEMORY[0x1E69E9840];
  v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Failed to allocate identifier for text: %s", *(a1 + 32)];
  v11[0] = @"FunctionName";
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB enumerateIdentifiersAndCodeSigningInfoUsingBlock:]_block_invoke"];
  v12[0] = v2;
  v12[1] = &unk_1F5A76D08;
  v3 = *MEMORY[0x1E696A578];
  v11[1] = @"SourceFileLine";
  v11[2] = v3;
  v12[2] = v1;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];

  v5 = container_log_handle_for_category();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v10 = v1;
    _os_log_error_impl(&dword_1DF2C3000, v5, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:73 userInfo:v4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

id __64__MCMSQLiteDB_enumerateIdentifiersAndCodeSigningInfoUsingBlock___block_invoke_261(uint64_t a1)
{
  v21[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Error retrieving childBundleIds: %@", *(a1 + 32)];
  v20[0] = @"FunctionName";
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB enumerateIdentifiersAndCodeSigningInfoUsingBlock:]_block_invoke"];
  v21[0] = v3;
  v21[1] = &unk_1F5A76D20;
  v4 = *MEMORY[0x1E696A578];
  v20[1] = @"SourceFileLine";
  v20[2] = v4;
  v21[2] = v2;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:3];

  if (*(a1 + 32))
  {
    v6 = [v5 mutableCopy];
    [v6 setObject:*(a1 + 32) forKeyedSubscript:*MEMORY[0x1E696AA08]];
    v7 = [v6 copy];

    if (*(a1 + 32))
    {
      v8 = container_log_handle_for_category();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      v9 = *(a1 + 32);
      *buf = 138543618;
      v17 = v2;
      v18 = 2114;
      v19 = v9;
      v10 = "%{public}@ (%{public}@)";
      v11 = v8;
      v12 = 22;
      goto LABEL_11;
    }
  }

  else
  {
    v7 = v5;
  }

  v8 = container_log_handle_for_category();
  if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_7;
  }

  *buf = 138543362;
  v17 = v2;
  v10 = "%{public}@";
  v11 = v8;
  v12 = 12;
LABEL_11:
  _os_log_error_impl(&dword_1DF2C3000, v11, OS_LOG_TYPE_ERROR, v10, buf, v12);
LABEL_7:

  v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:66 userInfo:v7];

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (BOOL)invalidateCodeSigningForIdentifierAndAllChildren:(id)children error:(id *)error
{
  v57 = *MEMORY[0x1E69E9840];
  childrenCopy = children;
  dispatch_assert_queue_V2(self->_queue);
  v33 = objc_opt_new();
  v45 = 0;
  v34 = childrenCopy;
  v6 = [(MCMSQLiteDB *)self childIdentifiersForParentIdentifier:childrenCopy error:&v45];
  v7 = v45;
  v8 = v7;
  v32 = v6;
  if (v6)
  {
    goto LABEL_2;
  }

  domain = [v7 domain];
  if (![domain isEqualToString:@"MCMErrorDomain"])
  {

    goto LABEL_27;
  }

  v24 = [v8 code] == 67;

  if (!v24)
  {
LABEL_27:
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __70__MCMSQLiteDB_invalidateCodeSigningForIdentifierAndAllChildren_error___block_invoke;
    v42[3] = &unk_1E86B0BE8;
    v43 = v34;
    v27 = v8;
    v44 = v27;
    v21 = __70__MCMSQLiteDB_invalidateCodeSigningForIdentifierAndAllChildren_error___block_invoke(v42);

    v32 = 0;
    v26 = &v43;
    v25 = v44;
    goto LABEL_28;
  }

  v8 = 0;
  v6 = 0;
LABEL_2:
  [v33 addObject:v34];
  if (v6)
  {
    [v33 addObjectsFromArray:v6];
  }

  v41 = v8;
  v9 = [(MCMSQLiteDB *)self _sqliteExec:@"BEGIN;" error:&v41];
  v10 = v41;

  if (v9)
  {
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v11 = v33;
    v12 = [v11 countByEnumeratingWithState:&v53 objects:v52 count:16];
    if (v12)
    {
      v13 = *v54;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v54 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v53 + 1) + 8 * i);
          v38 = v10;
          v16 = [(MCMSQLiteDB *)self invalidateCodeSigningWithIdentifier:v15 error:&v38];
          v17 = v38;

          if (v16)
          {
            v18 = container_log_handle_for_category();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412546;
              v47 = v34;
              v48 = 2112;
              v49 = v15;
              _os_log_debug_impl(&dword_1DF2C3000, v18, OS_LOG_TYPE_DEBUG, "Invalidating code signing info for %@ child: %@", buf, 0x16u);
            }

            v10 = v17;
          }

          else
          {
            v19 = container_log_handle_for_category();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412802;
              v47 = v34;
              v48 = 2112;
              v49 = v15;
              v50 = 2112;
              v51 = v17;
              _os_log_error_impl(&dword_1DF2C3000, v19, OS_LOG_TYPE_ERROR, "Failed to invalidate code signing info for %@ child %@ : %@", buf, 0x20u);
            }

            v10 = 0;
            v18 = v17;
          }
        }

        v12 = [v11 countByEnumeratingWithState:&v53 objects:v52 count:16];
      }

      while (v12);
    }

    v37[0] = v10;
    v20 = [(MCMSQLiteDB *)self _sqliteExec:@"COMMIT;" error:v37];
    v21 = v37[0];

    if (!v20)
    {
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __70__MCMSQLiteDB_invalidateCodeSigningForIdentifierAndAllChildren_error___block_invoke_235;
      v35[3] = &unk_1E86B0B98;
      v36 = v21;
      v21 = __70__MCMSQLiteDB_invalidateCodeSigningForIdentifierAndAllChildren_error___block_invoke_235(v35);
    }

    v22 = 1;
    goto LABEL_31;
  }

  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __70__MCMSQLiteDB_invalidateCodeSigningForIdentifierAndAllChildren_error___block_invoke_229;
  v39[3] = &unk_1E86B0B98;
  v25 = v10;
  v40 = v25;
  v21 = __70__MCMSQLiteDB_invalidateCodeSigningForIdentifierAndAllChildren_error___block_invoke_229(v39);
  v26 = &v40;
LABEL_28:

  if (error)
  {
    v28 = v21;
    *error = v21;
  }

  v22 = 0;
LABEL_31:

  v29 = *MEMORY[0x1E69E9840];
  return v22;
}

id __70__MCMSQLiteDB_invalidateCodeSigningForIdentifierAndAllChildren_error___block_invoke(uint64_t a1)
{
  v21[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Error retrieving child bundles ids from DB with identifier %@ : %@", *(a1 + 32), *(a1 + 40)];
  v20[0] = @"FunctionName";
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB invalidateCodeSigningForIdentifierAndAllChildren:error:]_block_invoke"];
  v21[0] = v3;
  v21[1] = &unk_1F5A76C48;
  v4 = *MEMORY[0x1E696A578];
  v20[1] = @"SourceFileLine";
  v20[2] = v4;
  v21[2] = v2;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:3];

  if (*(a1 + 40))
  {
    v6 = [v5 mutableCopy];
    [v6 setObject:*(a1 + 40) forKeyedSubscript:*MEMORY[0x1E696AA08]];
    v7 = [v6 copy];

    if (*(a1 + 40))
    {
      v8 = container_log_handle_for_category();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      v9 = *(a1 + 40);
      *buf = 138543618;
      v17 = v2;
      v18 = 2114;
      v19 = v9;
      v10 = "%{public}@ (%{public}@)";
      v11 = v8;
      v12 = 22;
      goto LABEL_11;
    }
  }

  else
  {
    v7 = v5;
  }

  v8 = container_log_handle_for_category();
  if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_7;
  }

  *buf = 138543362;
  v17 = v2;
  v10 = "%{public}@";
  v11 = v8;
  v12 = 12;
LABEL_11:
  _os_log_error_impl(&dword_1DF2C3000, v11, OS_LOG_TYPE_ERROR, v10, buf, v12);
LABEL_7:

  v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:66 userInfo:v7];

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

id __70__MCMSQLiteDB_invalidateCodeSigningForIdentifierAndAllChildren_error___block_invoke_229(uint64_t a1)
{
  v21[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"failed _sqliteExec begin"];
  v20[0] = @"FunctionName";
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB invalidateCodeSigningForIdentifierAndAllChildren:error:]_block_invoke"];
  v21[0] = v3;
  v21[1] = &unk_1F5A76C60;
  v4 = *MEMORY[0x1E696A578];
  v20[1] = @"SourceFileLine";
  v20[2] = v4;
  v21[2] = v2;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:3];

  if (*(a1 + 32))
  {
    v6 = [v5 mutableCopy];
    [v6 setObject:*(a1 + 32) forKeyedSubscript:*MEMORY[0x1E696AA08]];
    v7 = [v6 copy];

    if (*(a1 + 32))
    {
      v8 = container_log_handle_for_category();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      v9 = *(a1 + 32);
      v16 = 138543618;
      v17 = v2;
      v18 = 2114;
      v19 = v9;
      v10 = "%{public}@ (%{public}@)";
      v11 = v8;
      v12 = 22;
      goto LABEL_11;
    }
  }

  else
  {
    v7 = v5;
  }

  v8 = container_log_handle_for_category();
  if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_7;
  }

  v16 = 138543362;
  v17 = v2;
  v10 = "%{public}@";
  v11 = v8;
  v12 = 12;
LABEL_11:
  _os_log_error_impl(&dword_1DF2C3000, v11, OS_LOG_TYPE_ERROR, v10, &v16, v12);
LABEL_7:

  v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:66 userInfo:v7];

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

id __70__MCMSQLiteDB_invalidateCodeSigningForIdentifierAndAllChildren_error___block_invoke_235(uint64_t a1)
{
  v21[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"failed _sqliteExec commit"];
  v20[0] = @"FunctionName";
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB invalidateCodeSigningForIdentifierAndAllChildren:error:]_block_invoke"];
  v21[0] = v3;
  v21[1] = &unk_1F5A76C90;
  v4 = *MEMORY[0x1E696A578];
  v20[1] = @"SourceFileLine";
  v20[2] = v4;
  v21[2] = v2;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:3];

  if (*(a1 + 32))
  {
    v6 = [v5 mutableCopy];
    [v6 setObject:*(a1 + 32) forKeyedSubscript:*MEMORY[0x1E696AA08]];
    v7 = [v6 copy];

    if (*(a1 + 32))
    {
      v8 = container_log_handle_for_category();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      v9 = *(a1 + 32);
      v16 = 138543618;
      v17 = v2;
      v18 = 2114;
      v19 = v9;
      v10 = "%{public}@ (%{public}@)";
      v11 = v8;
      v12 = 22;
      goto LABEL_11;
    }
  }

  else
  {
    v7 = v5;
  }

  v8 = container_log_handle_for_category();
  if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_7;
  }

  v16 = 138543362;
  v17 = v2;
  v10 = "%{public}@";
  v11 = v8;
  v12 = 12;
LABEL_11:
  _os_log_error_impl(&dword_1DF2C3000, v11, OS_LOG_TYPE_ERROR, v10, &v16, v12);
LABEL_7:

  v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:66 userInfo:v7];

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

id __70__MCMSQLiteDB_invalidateCodeSigningForIdentifierAndAllChildren_error___block_invoke_232(uint64_t a1)
{
  v16[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = *(a1 + 32);
  v4 = [v3 callStackSymbols];
  v5 = [v2 initWithFormat:@"Got exception: %@ : %@", v3, v4];

  v15[0] = @"FunctionName";
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB invalidateCodeSigningForIdentifierAndAllChildren:error:]_block_invoke"];
  v16[0] = v6;
  v16[1] = &unk_1F5A76C78;
  v7 = *MEMORY[0x1E696A578];
  v15[1] = @"SourceFileLine";
  v15[2] = v7;
  v16[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:3];

  v9 = container_log_handle_for_category();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v14 = v5;
    _os_log_error_impl(&dword_1DF2C3000, v9, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:40 userInfo:v8];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

id __70__MCMSQLiteDB_invalidateCodeSigningForIdentifierAndAllChildren_error___block_invoke_238(uint64_t a1)
{
  v21[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"failed _sqliteExec rollback"];
  v20[0] = @"FunctionName";
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB invalidateCodeSigningForIdentifierAndAllChildren:error:]_block_invoke"];
  v21[0] = v3;
  v21[1] = &unk_1F5A76CA8;
  v4 = *MEMORY[0x1E696A578];
  v20[1] = @"SourceFileLine";
  v20[2] = v4;
  v21[2] = v2;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:3];

  if (*(a1 + 32))
  {
    v6 = [v5 mutableCopy];
    [v6 setObject:*(a1 + 32) forKeyedSubscript:*MEMORY[0x1E696AA08]];
    v7 = [v6 copy];

    if (*(a1 + 32))
    {
      v8 = container_log_handle_for_category();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      v9 = *(a1 + 32);
      v16 = 138543618;
      v17 = v2;
      v18 = 2114;
      v19 = v9;
      v10 = "%{public}@ (%{public}@)";
      v11 = v8;
      v12 = 22;
      goto LABEL_11;
    }
  }

  else
  {
    v7 = v5;
  }

  v8 = container_log_handle_for_category();
  if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_7;
  }

  v16 = 138543362;
  v17 = v2;
  v10 = "%{public}@";
  v11 = v8;
  v12 = 12;
LABEL_11:
  _os_log_error_impl(&dword_1DF2C3000, v11, OS_LOG_TYPE_ERROR, v10, &v16, v12);
LABEL_7:

  v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:66 userInfo:v7];

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (BOOL)invalidateCodeSigningWithIdentifier:(id)identifier error:(id *)error
{
  v16[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  dispatch_assert_queue_V2(self->_queue);
  v16[0] = 0;
  v7 = [(MCMSQLiteDB *)self _performSingleParameterQuery:"UPDATE code_signing_info SET invalid=1 WHERE code_signing_id_text = ?;" withTextInput:identifierCopy error:v16];
  v8 = v16[0];
  if (!v7)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __57__MCMSQLiteDB_invalidateCodeSigningWithIdentifier_error___block_invoke;
    v13[3] = &unk_1E86B0BE8;
    v14 = identifierCopy;
    v15 = v8;
    v9 = v8;
    v8 = __57__MCMSQLiteDB_invalidateCodeSigningWithIdentifier_error___block_invoke(v13);

    if (error)
    {
      v10 = v8;
      *error = v8;
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return v7;
}

id __57__MCMSQLiteDB_invalidateCodeSigningWithIdentifier_error___block_invoke(uint64_t a1)
{
  v21[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"failed to invalidate identifier %@", *(a1 + 32)];
  v20[0] = @"FunctionName";
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB invalidateCodeSigningWithIdentifier:error:]_block_invoke"];
  v21[0] = v3;
  v21[1] = &unk_1F5A76C30;
  v4 = *MEMORY[0x1E696A578];
  v20[1] = @"SourceFileLine";
  v20[2] = v4;
  v21[2] = v2;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:3];

  if (*(a1 + 40))
  {
    v6 = [v5 mutableCopy];
    [v6 setObject:*(a1 + 40) forKeyedSubscript:*MEMORY[0x1E696AA08]];
    v7 = [v6 copy];

    if (*(a1 + 40))
    {
      v8 = container_log_handle_for_category();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      v9 = *(a1 + 40);
      *buf = 138543618;
      v17 = v2;
      v18 = 2114;
      v19 = v9;
      v10 = "%{public}@ (%{public}@)";
      v11 = v8;
      v12 = 22;
      goto LABEL_11;
    }
  }

  else
  {
    v7 = v5;
  }

  v8 = container_log_handle_for_category();
  if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_7;
  }

  *buf = 138543362;
  v17 = v2;
  v10 = "%{public}@";
  v11 = v8;
  v12 = 12;
LABEL_11:
  _os_log_error_impl(&dword_1DF2C3000, v11, OS_LOG_TYPE_ERROR, v10, buf, v12);
LABEL_7:

  v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:66 userInfo:v7];

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)codeSigningEntryWithIdentifier:(id)identifier error:(id *)error
{
  v24 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  dispatch_assert_queue_V2(self->_queue);
  v21 = 0;
  v7 = [(MCMSQLiteDB *)self _selectCodeSigningEntryWithIdentifier:identifierCopy error:&v21];
  v8 = v21;
  v9 = v8;
  if (v7)
  {
    v18 = v8;
    v10 = [(MCMSQLiteDB *)self childIdentifiersForParentIdentifier:identifierCopy error:&v18];
    v11 = v18;

    if (v10)
    {
LABEL_3:
      [v7 setChildBundleIdentifiers:v10];
      goto LABEL_19;
    }

    domain = [v11 domain];
    if ([domain isEqualToString:@"MCMErrorDomain"])
    {
      code = [v11 code];

      if (code == 67)
      {

        v11 = 0;
        goto LABEL_3;
      }
    }

    else
    {
    }

    v14 = container_log_handle_for_category();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v23 = v11;
      _os_log_error_impl(&dword_1DF2C3000, v14, OS_LOG_TYPE_ERROR, "Error retrieving childBundleIds: %@", buf, 0xCu);
    }
  }

  else if (v8)
  {
    v7 = container_log_handle_for_category();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v23 = v9;
      _os_log_error_impl(&dword_1DF2C3000, v7, OS_LOG_TYPE_ERROR, "Error retrieving code signing entry: %@", buf, 0xCu);
    }

    v11 = v9;
  }

  else
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __52__MCMSQLiteDB_codeSigningEntryWithIdentifier_error___block_invoke;
    v19[3] = &unk_1E86B0B98;
    v20 = identifierCopy;
    v11 = __52__MCMSQLiteDB_codeSigningEntryWithIdentifier_error___block_invoke(v19);
    v7 = v20;
  }

  if (error)
  {
    v15 = v11;
    v10 = 0;
    v7 = 0;
    *error = v11;
  }

  else
  {
    v10 = 0;
    v7 = 0;
  }

LABEL_19:

  v16 = *MEMORY[0x1E69E9840];

  return v7;
}

id __52__MCMSQLiteDB_codeSigningEntryWithIdentifier_error___block_invoke(uint64_t a1)
{
  v9[3] = *MEMORY[0x1E69E9840];
  v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Identifier: %@ Not Found in DB", *(a1 + 32)];
  v8[0] = @"FunctionName";
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB codeSigningEntryWithIdentifier:error:]_block_invoke"];
  v9[0] = v2;
  v9[1] = &unk_1F5A76C18;
  v3 = *MEMORY[0x1E696A578];
  v8[1] = @"SourceFileLine";
  v8[2] = v3;
  v9[2] = v1;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:3];

  v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:67 userInfo:v4];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (BOOL)deleteCodeSigningEntryWithIdentifier:(id)identifier error:(id *)error
{
  v14 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  dispatch_assert_queue_V2(self->_queue);
  if (identifierCopy)
  {
    v7 = [(MCMSQLiteDB *)self _deleteCodeSigningWithIdentifier:identifierCopy error:error];
    v8 = 0;
    if (!error)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __58__MCMSQLiteDB_deleteCodeSigningEntryWithIdentifier_error___block_invoke;
    v12[3] = &unk_1E86B0B98;
    v13 = 0;
    v8 = __58__MCMSQLiteDB_deleteCodeSigningEntryWithIdentifier_error___block_invoke(v12);

    v7 = 0;
    if (!error)
    {
      goto LABEL_7;
    }
  }

  if (!v7)
  {
    v9 = v8;
    *error = v8;
  }

LABEL_7:

  v10 = *MEMORY[0x1E69E9840];
  return v7;
}

id __58__MCMSQLiteDB_deleteCodeSigningEntryWithIdentifier_error___block_invoke(uint64_t a1)
{
  v12[3] = *MEMORY[0x1E69E9840];
  v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"\bidentifier %@ cannot be nil", *(a1 + 32)];
  v11[0] = @"FunctionName";
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB deleteCodeSigningEntryWithIdentifier:error:]_block_invoke"];
  v12[0] = v2;
  v12[1] = &unk_1F5A76C00;
  v3 = *MEMORY[0x1E696A578];
  v11[1] = @"SourceFileLine";
  v11[2] = v3;
  v12[2] = v1;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];

  v5 = container_log_handle_for_category();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v10 = v1;
    _os_log_error_impl(&dword_1DF2C3000, v5, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:38 userInfo:v4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (BOOL)addCodeSigningEntry:(id)entry withIdentifier:(id)identifier error:(id *)error
{
  v44 = *MEMORY[0x1E69E9840];
  entryCopy = entry;
  identifierCopy = identifier;
  dispatch_assert_queue_V2(self->_queue);
  if (!entryCopy || !identifierCopy)
  {
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __56__MCMSQLiteDB_addCodeSigningEntry_withIdentifier_error___block_invoke;
    v36[3] = &unk_1E86B0BE8;
    v37 = entryCopy;
    v38 = identifierCopy;
    v19 = __56__MCMSQLiteDB_addCodeSigningEntry_withIdentifier_error___block_invoke(v36);
    v21 = &v37;
    v22 = v38;
LABEL_22:

    goto LABEL_23;
  }

  v35 = 0;
  v10 = [(MCMSQLiteDB *)self _sqliteExec:@"BEGIN;" error:&v35];
  v11 = v35;
  v12 = v11;
  if (!v10)
  {
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __56__MCMSQLiteDB_addCodeSigningEntry_withIdentifier_error___block_invoke_177;
    v33[3] = &unk_1E86B0B98;
    v22 = v11;
    v34 = v22;
    v19 = __56__MCMSQLiteDB_addCodeSigningEntry_withIdentifier_error___block_invoke_177(v33);
    v21 = &v34;
    goto LABEL_22;
  }

  if ([(MCMSQLiteDB *)self _insertCodeSigningInfo:entryCopy forIdentifier:identifierCopy error:error]&& [(MCMSQLiteDB *)self _insertCodeSigningData:entryCopy forIdentifier:identifierCopy error:error])
  {
    childBundleIdentifiers = [entryCopy childBundleIdentifiers];

    if (childBundleIdentifiers)
    {
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      childBundleIdentifiers2 = [entryCopy childBundleIdentifiers];
      v15 = [childBundleIdentifiers2 countByEnumeratingWithState:&v40 objects:v39 count:16];
      if (v15)
      {
        v16 = *v41;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v41 != v16)
            {
              objc_enumerationMutation(childBundleIdentifiers2);
            }

            [(MCMSQLiteDB *)self _insertChildIdentifier:*(*(&v40 + 1) + 8 * i) forParentIdentifier:identifierCopy error:0];
          }

          v15 = [childBundleIdentifiers2 countByEnumeratingWithState:&v40 objects:v39 count:16];
        }

        while (v15);
      }
    }

    v32[0] = v12;
    v18 = [(MCMSQLiteDB *)self _sqliteExec:@"COMMIT;" error:v32];
    v19 = v32[0];

    if (!v18)
    {
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __56__MCMSQLiteDB_addCodeSigningEntry_withIdentifier_error___block_invoke_192;
      v30[3] = &unk_1E86B0B98;
      v31 = v19;
      v19 = __56__MCMSQLiteDB_addCodeSigningEntry_withIdentifier_error___block_invoke_192(v30);
    }

    v20 = 1;
    goto LABEL_26;
  }

  v29 = v12;
  v23 = [(MCMSQLiteDB *)self _sqliteExec:@"ROLLBACK;" error:&v29];
  v19 = v29;

  if (!v23)
  {
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __56__MCMSQLiteDB_addCodeSigningEntry_withIdentifier_error___block_invoke_201;
    v27[3] = &unk_1E86B0B98;
    v22 = v19;
    v28 = v22;
    v19 = __56__MCMSQLiteDB_addCodeSigningEntry_withIdentifier_error___block_invoke_201(v27);
    v21 = &v28;
    goto LABEL_22;
  }

LABEL_23:
  if (error)
  {
    v24 = v19;
    *error = v19;
  }

  v20 = 0;
LABEL_26:

  v25 = *MEMORY[0x1E69E9840];
  return v20;
}

id __56__MCMSQLiteDB_addCodeSigningEntry_withIdentifier_error___block_invoke(uint64_t a1)
{
  v12[3] = *MEMORY[0x1E69E9840];
  v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"codeSigningEntry %@ and identifier %@ cannot be nil", *(a1 + 32), *(a1 + 40)];
  v11[0] = @"FunctionName";
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB addCodeSigningEntry:withIdentifier:error:]_block_invoke"];
  v12[0] = v2;
  v12[1] = &unk_1F5A76B88;
  v3 = *MEMORY[0x1E696A578];
  v11[1] = @"SourceFileLine";
  v11[2] = v3;
  v12[2] = v1;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];

  v5 = container_log_handle_for_category();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v10 = v1;
    _os_log_error_impl(&dword_1DF2C3000, v5, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:38 userInfo:v4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

id __56__MCMSQLiteDB_addCodeSigningEntry_withIdentifier_error___block_invoke_177(uint64_t a1)
{
  v21[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"failed _sqliteExec begin"];
  v20[0] = @"FunctionName";
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB addCodeSigningEntry:withIdentifier:error:]_block_invoke"];
  v21[0] = v3;
  v21[1] = &unk_1F5A76BA0;
  v4 = *MEMORY[0x1E696A578];
  v20[1] = @"SourceFileLine";
  v20[2] = v4;
  v21[2] = v2;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:3];

  if (*(a1 + 32))
  {
    v6 = [v5 mutableCopy];
    [v6 setObject:*(a1 + 32) forKeyedSubscript:*MEMORY[0x1E696AA08]];
    v7 = [v6 copy];

    if (*(a1 + 32))
    {
      v8 = container_log_handle_for_category();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      v9 = *(a1 + 32);
      v16 = 138543618;
      v17 = v2;
      v18 = 2114;
      v19 = v9;
      v10 = "%{public}@ (%{public}@)";
      v11 = v8;
      v12 = 22;
      goto LABEL_11;
    }
  }

  else
  {
    v7 = v5;
  }

  v8 = container_log_handle_for_category();
  if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_7;
  }

  v16 = 138543362;
  v17 = v2;
  v10 = "%{public}@";
  v11 = v8;
  v12 = 12;
LABEL_11:
  _os_log_error_impl(&dword_1DF2C3000, v11, OS_LOG_TYPE_ERROR, v10, &v16, v12);
LABEL_7:

  v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:66 userInfo:v7];

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

id __56__MCMSQLiteDB_addCodeSigningEntry_withIdentifier_error___block_invoke_192(uint64_t a1)
{
  v21[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"failed _sqliteExec commit"];
  v20[0] = @"FunctionName";
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB addCodeSigningEntry:withIdentifier:error:]_block_invoke"];
  v21[0] = v3;
  v21[1] = &unk_1F5A76BD0;
  v4 = *MEMORY[0x1E696A578];
  v20[1] = @"SourceFileLine";
  v20[2] = v4;
  v21[2] = v2;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:3];

  if (*(a1 + 32))
  {
    v6 = [v5 mutableCopy];
    [v6 setObject:*(a1 + 32) forKeyedSubscript:*MEMORY[0x1E696AA08]];
    v7 = [v6 copy];

    if (*(a1 + 32))
    {
      v8 = container_log_handle_for_category();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      v9 = *(a1 + 32);
      v16 = 138543618;
      v17 = v2;
      v18 = 2114;
      v19 = v9;
      v10 = "%{public}@ (%{public}@)";
      v11 = v8;
      v12 = 22;
      goto LABEL_11;
    }
  }

  else
  {
    v7 = v5;
  }

  v8 = container_log_handle_for_category();
  if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_7;
  }

  v16 = 138543362;
  v17 = v2;
  v10 = "%{public}@";
  v11 = v8;
  v12 = 12;
LABEL_11:
  _os_log_error_impl(&dword_1DF2C3000, v11, OS_LOG_TYPE_ERROR, v10, &v16, v12);
LABEL_7:

  v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:66 userInfo:v7];

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

id __56__MCMSQLiteDB_addCodeSigningEntry_withIdentifier_error___block_invoke_183(uint64_t a1)
{
  v16[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = *(a1 + 32);
  v4 = [v3 callStackSymbols];
  v5 = [v2 initWithFormat:@"Got exception: %@ : %@", v3, v4];

  v15[0] = @"FunctionName";
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB addCodeSigningEntry:withIdentifier:error:]_block_invoke"];
  v16[0] = v6;
  v16[1] = &unk_1F5A76BB8;
  v7 = *MEMORY[0x1E696A578];
  v15[1] = @"SourceFileLine";
  v15[2] = v7;
  v16[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:3];

  v9 = container_log_handle_for_category();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v14 = v5;
    _os_log_error_impl(&dword_1DF2C3000, v9, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:40 userInfo:v8];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

id __56__MCMSQLiteDB_addCodeSigningEntry_withIdentifier_error___block_invoke_201(uint64_t a1)
{
  v21[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"failed _sqliteExec rollback"];
  v20[0] = @"FunctionName";
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB addCodeSigningEntry:withIdentifier:error:]_block_invoke"];
  v21[0] = v3;
  v21[1] = &unk_1F5A76BE8;
  v4 = *MEMORY[0x1E696A578];
  v20[1] = @"SourceFileLine";
  v20[2] = v4;
  v21[2] = v2;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:3];

  if (*(a1 + 32))
  {
    v6 = [v5 mutableCopy];
    [v6 setObject:*(a1 + 32) forKeyedSubscript:*MEMORY[0x1E696AA08]];
    v7 = [v6 copy];

    if (*(a1 + 32))
    {
      v8 = container_log_handle_for_category();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      v9 = *(a1 + 32);
      v16 = 138543618;
      v17 = v2;
      v18 = 2114;
      v19 = v9;
      v10 = "%{public}@ (%{public}@)";
      v11 = v8;
      v12 = 22;
      goto LABEL_11;
    }
  }

  else
  {
    v7 = v5;
  }

  v8 = container_log_handle_for_category();
  if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_7;
  }

  v16 = 138543362;
  v17 = v2;
  v10 = "%{public}@";
  v11 = v8;
  v12 = 12;
LABEL_11:
  _os_log_error_impl(&dword_1DF2C3000, v11, OS_LOG_TYPE_ERROR, v10, &v16, v12);
LABEL_7:

  v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:66 userInfo:v7];

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)_selectCodeSigningEntryWithIdentifier:(id)identifier error:(id *)error
{
  v31 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  ppStmt = 0;
  v7 = [(MCMSQLiteDB *)self db];
  if (sqlite3_prepare_v2(v7, "SELECT code_signing_data.data, code_signing_info.invalid, code_signing_info.placeholder, code_signing_info.registered_by_caller, code_signing_info.data_container_class FROM code_signing_info, code_signing_data WHERE code_signing_info.id = code_signing_data.cs_info_id AND code_signing_info.code_signing_id_text = ?;", -1, &ppStmt, 0))
  {
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __59__MCMSQLiteDB__selectCodeSigningEntryWithIdentifier_error___block_invoke;
    v25[3] = &unk_1E86B0B48;
    v25[4] = self;
    v25[5] = v7;
    v8 = __59__MCMSQLiteDB__selectCodeSigningEntryWithIdentifier_error___block_invoke(v25);
LABEL_3:
    v9 = v8;
    goto LABEL_6;
  }

  if (sqlite3_bind_text(ppStmt, 1, [identifierCopy UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL))
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __59__MCMSQLiteDB__selectCodeSigningEntryWithIdentifier_error___block_invoke_163;
    v21[3] = &unk_1E86B0B20;
    v22 = identifierCopy;
    selfCopy = self;
    v24 = v7;
    v9 = __59__MCMSQLiteDB__selectCodeSigningEntryWithIdentifier_error___block_invoke_163(v21);

    goto LABEL_6;
  }

  v15 = sqlite3_step(ppStmt);
  if ((v15 - 102) <= 0xFFFFFFFD)
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __59__MCMSQLiteDB__selectCodeSigningEntryWithIdentifier_error___block_invoke_166;
    v20[3] = &unk_1E86B0B48;
    v20[4] = self;
    v20[5] = v7;
    v8 = __59__MCMSQLiteDB__selectCodeSigningEntryWithIdentifier_error___block_invoke_166(v20);
    goto LABEL_3;
  }

  if (v15 == 100)
  {
    v19 = 0;
    v10 = [(MCMSQLiteDB *)self _codeSigningEntryFromStatementRow:ppStmt error:&v19];
    v9 = v19;
    goto LABEL_7;
  }

  v9 = 0;
LABEL_6:
  v10 = 0;
LABEL_7:
  if (ppStmt && sqlite3_finalize(ppStmt))
  {
    v11 = container_log_handle_for_category();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v16 = [(MCMSQLiteDB *)self url];
      path = [v16 path];
      v18 = sqlite3_extended_errcode(v7);
      *buf = 138412546;
      v28 = path;
      v29 = 1024;
      v30 = v18;
      _os_log_error_impl(&dword_1DF2C3000, v11, OS_LOG_TYPE_ERROR, "sqlite3_finalize for %@ failed: %d", buf, 0x12u);
    }
  }

  if (error && !v10)
  {
    v12 = v9;
    *error = v9;
  }

  v13 = *MEMORY[0x1E69E9840];

  return v10;
}

id __59__MCMSQLiteDB__selectCodeSigningEntryWithIdentifier_error___block_invoke(uint64_t a1)
{
  v16[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) url];
  v4 = [v3 path];
  v5 = [v2 initWithFormat:@"sqlite3_prepare(select) for %@ failed: %d", v4, sqlite3_extended_errcode(*(a1 + 40))];

  v15[0] = @"FunctionName";
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB _selectCodeSigningEntryWithIdentifier:error:]_block_invoke"];
  v16[0] = v6;
  v16[1] = &unk_1F5A76B40;
  v7 = *MEMORY[0x1E696A578];
  v15[1] = @"SourceFileLine";
  v15[2] = v7;
  v16[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:3];

  v9 = container_log_handle_for_category();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v14 = v5;
    _os_log_error_impl(&dword_1DF2C3000, v9, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:66 userInfo:v8];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

id __59__MCMSQLiteDB__selectCodeSigningEntryWithIdentifier_error___block_invoke_163(uint64_t a1)
{
  v17[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) url];
  v5 = [v4 path];
  v6 = [v2 initWithFormat:@"sqlite3_bind_text for code_signing_id_text=%@ at %@ failed: %d", v3, v5, sqlite3_extended_errcode(*(a1 + 48))];

  v16[0] = @"FunctionName";
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB _selectCodeSigningEntryWithIdentifier:error:]_block_invoke"];
  v17[0] = v7;
  v17[1] = &unk_1F5A76B58;
  v8 = *MEMORY[0x1E696A578];
  v16[1] = @"SourceFileLine";
  v16[2] = v8;
  v17[2] = v6;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:3];

  v10 = container_log_handle_for_category();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v15 = v6;
    _os_log_error_impl(&dword_1DF2C3000, v10, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:66 userInfo:v9];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

id __59__MCMSQLiteDB__selectCodeSigningEntryWithIdentifier_error___block_invoke_166(uint64_t a1)
{
  v16[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) url];
  v4 = [v3 path];
  v5 = [v2 initWithFormat:@"sqlite3_step for %@ failed: %d", v4, sqlite3_extended_errcode(*(a1 + 40))];

  v15[0] = @"FunctionName";
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB _selectCodeSigningEntryWithIdentifier:error:]_block_invoke"];
  v16[0] = v6;
  v16[1] = &unk_1F5A76B70;
  v7 = *MEMORY[0x1E696A578];
  v15[1] = @"SourceFileLine";
  v15[2] = v7;
  v16[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:3];

  v9 = container_log_handle_for_category();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v14 = v5;
    _os_log_error_impl(&dword_1DF2C3000, v9, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:66 userInfo:v8];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)_codeSigningEntryFromStatementRow:(sqlite3_stmt *)row error:(id *)error
{
  v33[3] = *MEMORY[0x1E69E9840];
  v6 = sqlite3_column_blob(row, 0);
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:v6 length:sqlite3_column_bytes(row freeWhenDone:{0), 0}];
    v29 = 0;
    v8 = [MEMORY[0x1E696AE40] propertyListWithData:v7 options:0 format:0 error:&v29];
    v9 = v29;
    objc_opt_class();
    v10 = v8;
    v11 = 0;
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    if (v11)
    {
      v12 = [[MCMCodeSigningEntry alloc] initWithCodeSigningInfo:v10];
      if (v12)
      {
        v13 = v12;
        [(MCMCodeSigningEntry *)v12 setInvalid:sqlite3_column_int(row, 1) != 0];
        v14 = sqlite3_column_int(row, 2);
        [(MCMCodeSigningEntry *)v13 setPlaceholder:v14 & 1];
        [(MCMCodeSigningEntry *)v13 setAdvanceCopy:(v14 >> 1) & 1];
        [(MCMCodeSigningEntry *)v13 setRegisteredByKernel:(v14 >> 2) & 1];
        [(MCMCodeSigningEntry *)v13 setRegisteredByCaller:sqlite3_column_int(row, 3) != 0];
        [(MCMCodeSigningEntry *)v13 setDataContainerClass:sqlite3_column_int(row, 4)];

        goto LABEL_16;
      }

      v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Failed to allocate codeSigningEntry"];
      v32[0] = @"FunctionName";
      v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB _codeSigningEntryFromStatementRow:error:]_block_invoke"];
      v33[0] = v18;
      v33[1] = &unk_1F5A76B10;
      v19 = *MEMORY[0x1E696A578];
      v32[1] = @"SourceFileLine";
      v32[2] = v19;
      v33[2] = v17;
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:3];

      v21 = container_log_handle_for_category();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v31 = v17;
        _os_log_error_impl(&dword_1DF2C3000, v21, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      v16 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:73 userInfo:v20];
    }

    else
    {
      v15 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:2048 userInfo:0];

      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __55__MCMSQLiteDB__codeSigningEntryFromStatementRow_error___block_invoke;
      v27[3] = &unk_1E86B0B98;
      v28 = v15;
      v16 = __55__MCMSQLiteDB__codeSigningEntryFromStatementRow_error___block_invoke(v27);
      v9 = v28;
    }

    v9 = v16;
  }

  else
  {
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __55__MCMSQLiteDB__codeSigningEntryFromStatementRow_error___block_invoke_151;
    v25[3] = &unk_1E86B0B98;
    v26 = 0;
    v9 = __55__MCMSQLiteDB__codeSigningEntryFromStatementRow_error___block_invoke_151(v25);
    v7 = v26;
  }

  if (error)
  {
    v22 = v9;
    v13 = 0;
    *error = v9;
  }

  else
  {
    v13 = 0;
  }

LABEL_16:

  v23 = *MEMORY[0x1E69E9840];

  return v13;
}

id __55__MCMSQLiteDB__codeSigningEntryFromStatementRow_error___block_invoke(uint64_t a1)
{
  v21[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Error formatting info data from DB"];
  v20[0] = @"FunctionName";
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB _codeSigningEntryFromStatementRow:error:]_block_invoke"];
  v21[0] = v3;
  v21[1] = &unk_1F5A76AF8;
  v4 = *MEMORY[0x1E696A578];
  v20[1] = @"SourceFileLine";
  v20[2] = v4;
  v21[2] = v2;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:3];

  if (*(a1 + 32))
  {
    v6 = [v5 mutableCopy];
    [v6 setObject:*(a1 + 32) forKeyedSubscript:*MEMORY[0x1E696AA08]];
    v7 = [v6 copy];

    if (*(a1 + 32))
    {
      v8 = container_log_handle_for_category();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      v9 = *(a1 + 32);
      v16 = 138543618;
      v17 = v2;
      v18 = 2114;
      v19 = v9;
      v10 = "%{public}@ (%{public}@)";
      v11 = v8;
      v12 = 22;
      goto LABEL_11;
    }
  }

  else
  {
    v7 = v5;
  }

  v8 = container_log_handle_for_category();
  if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_7;
  }

  v16 = 138543362;
  v17 = v2;
  v10 = "%{public}@";
  v11 = v8;
  v12 = 12;
LABEL_11:
  _os_log_error_impl(&dword_1DF2C3000, v11, OS_LOG_TYPE_ERROR, v10, &v16, v12);
LABEL_7:

  v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:66 userInfo:v7];

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

id __55__MCMSQLiteDB__codeSigningEntryFromStatementRow_error___block_invoke_151(uint64_t a1)
{
  v21[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Failed to create code signing entry from statement row"];
  v20[0] = @"FunctionName";
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB _codeSigningEntryFromStatementRow:error:]_block_invoke"];
  v21[0] = v3;
  v21[1] = &unk_1F5A76B28;
  v4 = *MEMORY[0x1E696A578];
  v20[1] = @"SourceFileLine";
  v20[2] = v4;
  v21[2] = v2;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:3];

  if (*(a1 + 32))
  {
    v6 = [v5 mutableCopy];
    [v6 setObject:*(a1 + 32) forKeyedSubscript:*MEMORY[0x1E696AA08]];
    v7 = [v6 copy];

    if (*(a1 + 32))
    {
      v8 = container_log_handle_for_category();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      v9 = *(a1 + 32);
      v16 = 138543618;
      v17 = v2;
      v18 = 2114;
      v19 = v9;
      v10 = "%{public}@ (%{public}@)";
      v11 = v8;
      v12 = 22;
      goto LABEL_11;
    }
  }

  else
  {
    v7 = v5;
  }

  v8 = container_log_handle_for_category();
  if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_7;
  }

  v16 = 138543362;
  v17 = v2;
  v10 = "%{public}@";
  v11 = v8;
  v12 = 12;
LABEL_11:
  _os_log_error_impl(&dword_1DF2C3000, v11, OS_LOG_TYPE_ERROR, v10, &v16, v12);
LABEL_7:

  v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:66 userInfo:v7];

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (BOOL)_deleteCodeSigningWithIdentifier:(id)identifier error:(id *)error
{
  v17[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v17[0] = 0;
  v7 = [(MCMSQLiteDB *)self _performSingleParameterQuery:"DELETE FROM code_signing_info WHERE code_signing_id_text=?;" withTextInput:identifierCopy expectedChanges:1 error:v17];
  v8 = v17[0];
  v9 = v8;
  if (v7)
  {
    peerageDelegate = [(MCMSQLiteDB *)self peerageDelegate];
    [peerageDelegate codeSigningDB:self removeParentIdentifier:identifierCopy];
  }

  else
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __54__MCMSQLiteDB__deleteCodeSigningWithIdentifier_error___block_invoke;
    v15[3] = &unk_1E86B0B98;
    v16 = v8;
    v11 = v8;
    v9 = __54__MCMSQLiteDB__deleteCodeSigningWithIdentifier_error___block_invoke(v15);

    if (error)
    {
      v12 = v9;
      *error = v9;
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return v7;
}

id __54__MCMSQLiteDB__deleteCodeSigningWithIdentifier_error___block_invoke(uint64_t a1)
{
  v21[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"failed to delete from code_signing_info"];
  v20[0] = @"FunctionName";
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB _deleteCodeSigningWithIdentifier:error:]_block_invoke"];
  v21[0] = v3;
  v21[1] = &unk_1F5A76AE0;
  v4 = *MEMORY[0x1E696A578];
  v20[1] = @"SourceFileLine";
  v20[2] = v4;
  v21[2] = v2;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:3];

  if (*(a1 + 32))
  {
    v6 = [v5 mutableCopy];
    [v6 setObject:*(a1 + 32) forKeyedSubscript:*MEMORY[0x1E696AA08]];
    v7 = [v6 copy];

    if (*(a1 + 32))
    {
      v8 = container_log_handle_for_category();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      v9 = *(a1 + 32);
      v16 = 138543618;
      v17 = v2;
      v18 = 2114;
      v19 = v9;
      v10 = "%{public}@ (%{public}@)";
      v11 = v8;
      v12 = 22;
      goto LABEL_11;
    }
  }

  else
  {
    v7 = v5;
  }

  v8 = container_log_handle_for_category();
  if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_7;
  }

  v16 = 138543362;
  v17 = v2;
  v10 = "%{public}@";
  v11 = v8;
  v12 = 12;
LABEL_11:
  _os_log_error_impl(&dword_1DF2C3000, v11, OS_LOG_TYPE_ERROR, v10, &v16, v12);
LABEL_7:

  v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:66 userInfo:v7];

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (BOOL)_insertCodeSigningData:(id)data forIdentifier:(id)identifier error:(id *)error
{
  v43 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  identifierCopy = identifier;
  ppStmt = 0;
  v10 = [(MCMSQLiteDB *)self db];
  if (!sqlite3_prepare_v2(v10, "INSERT OR REPLACE INTO code_signing_data (cs_info_id, data) SELECT id, ? FROM code_signing_info WHERE code_signing_id_text = ?;", -1, &ppStmt, 0))
  {
    v14 = MEMORY[0x1E696AE40];
    codeSigningInfo = [dataCopy codeSigningInfo];
    v36 = 0;
    v12 = [v14 dataWithPropertyList:codeSigningInfo format:200 options:0 error:&v36];
    v11 = v36;

    if (!v12)
    {
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __58__MCMSQLiteDB__insertCodeSigningData_forIdentifier_error___block_invoke_111;
      v33[3] = &unk_1E86B0BE8;
      v34 = dataCopy;
      v35 = v11;
      v18 = v11;
      v11 = __58__MCMSQLiteDB__insertCodeSigningData_forIdentifier_error___block_invoke_111(v33);

      goto LABEL_3;
    }

    if (sqlite3_bind_blob64(ppStmt, 1, [v12 bytes], objc_msgSend(v12, "length"), 0xFFFFFFFFFFFFFFFFLL))
    {
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __58__MCMSQLiteDB__insertCodeSigningData_forIdentifier_error___block_invoke_117;
      v32[3] = &unk_1E86B0B48;
      v32[4] = self;
      v32[5] = v10;
      v16 = __58__MCMSQLiteDB__insertCodeSigningData_forIdentifier_error___block_invoke_117(v32);
    }

    else
    {
      if (sqlite3_bind_text(ppStmt, 2, [identifierCopy UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL))
      {
        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 3221225472;
        v28[2] = __58__MCMSQLiteDB__insertCodeSigningData_forIdentifier_error___block_invoke_123;
        v28[3] = &unk_1E86B0B20;
        v29 = identifierCopy;
        selfCopy = self;
        v31 = v10;
        v17 = __58__MCMSQLiteDB__insertCodeSigningData_forIdentifier_error___block_invoke_123(v28);

        goto LABEL_11;
      }

      if (sqlite3_step(ppStmt) == 101)
      {
        v13 = 1;
        goto LABEL_12;
      }

      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __58__MCMSQLiteDB__insertCodeSigningData_forIdentifier_error___block_invoke_129;
      v27[3] = &unk_1E86B0B48;
      v27[4] = self;
      v27[5] = v10;
      v16 = __58__MCMSQLiteDB__insertCodeSigningData_forIdentifier_error___block_invoke_129(v27);
    }

    v17 = v16;

LABEL_11:
    v13 = 0;
    v11 = v17;
    goto LABEL_12;
  }

  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __58__MCMSQLiteDB__insertCodeSigningData_forIdentifier_error___block_invoke;
  v37[3] = &unk_1E86B0B48;
  v37[4] = self;
  v37[5] = v10;
  v11 = __58__MCMSQLiteDB__insertCodeSigningData_forIdentifier_error___block_invoke(v37);
LABEL_3:
  v12 = 0;
  v13 = 0;
LABEL_12:
  if (ppStmt && sqlite3_finalize(ppStmt))
  {
    v19 = container_log_handle_for_category();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v24 = [(MCMSQLiteDB *)self url];
      path = [v24 path];
      v26 = sqlite3_extended_errcode(v10);
      *buf = 138412546;
      v40 = path;
      v41 = 1024;
      v42 = v26;
      _os_log_error_impl(&dword_1DF2C3000, v19, OS_LOG_TYPE_ERROR, "sqlite3_finalize for %@ failed: %d", buf, 0x12u);
    }
  }

  if (error)
  {
    v20 = v13;
  }

  else
  {
    v20 = 1;
  }

  if ((v20 & 1) == 0)
  {
    v21 = v11;
    *error = v11;
  }

  v22 = *MEMORY[0x1E69E9840];
  return v13;
}

id __58__MCMSQLiteDB__insertCodeSigningData_forIdentifier_error___block_invoke(uint64_t a1)
{
  v16[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) url];
  v4 = [v3 path];
  v5 = [v2 initWithFormat:@"sqlite3_prepare(insert) for %@ failed: %d", v4, sqlite3_extended_errcode(*(a1 + 40))];

  v15[0] = @"FunctionName";
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB _insertCodeSigningData:forIdentifier:error:]_block_invoke"];
  v16[0] = v6;
  v16[1] = &unk_1F5A76A68;
  v7 = *MEMORY[0x1E696A578];
  v15[1] = @"SourceFileLine";
  v15[2] = v7;
  v16[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:3];

  v9 = container_log_handle_for_category();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v14 = v5;
    _os_log_error_impl(&dword_1DF2C3000, v9, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:66 userInfo:v8];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

id __58__MCMSQLiteDB__insertCodeSigningData_forIdentifier_error___block_invoke_111(uint64_t a1)
{
  v23[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) codeSigningInfo];
  v4 = [v2 initWithFormat:@"Error creating NSData from code signing info: %@", v3];

  v22[0] = @"FunctionName";
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB _insertCodeSigningData:forIdentifier:error:]_block_invoke"];
  v23[0] = v5;
  v23[1] = &unk_1F5A76A80;
  v6 = *MEMORY[0x1E696A578];
  v22[1] = @"SourceFileLine";
  v22[2] = v6;
  v23[2] = v4;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:3];

  if (*(a1 + 40))
  {
    v8 = [v7 mutableCopy];
    [v8 setObject:*(a1 + 40) forKeyedSubscript:*MEMORY[0x1E696AA08]];
    v9 = [v8 copy];

    if (*(a1 + 40))
    {
      v10 = container_log_handle_for_category();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      v11 = *(a1 + 40);
      *buf = 138543618;
      v19 = v4;
      v20 = 2114;
      v21 = v11;
      v12 = "%{public}@ (%{public}@)";
      v13 = v10;
      v14 = 22;
      goto LABEL_11;
    }
  }

  else
  {
    v9 = v7;
  }

  v10 = container_log_handle_for_category();
  if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_7;
  }

  *buf = 138543362;
  v19 = v4;
  v12 = "%{public}@";
  v13 = v10;
  v14 = 12;
LABEL_11:
  _os_log_error_impl(&dword_1DF2C3000, v13, OS_LOG_TYPE_ERROR, v12, buf, v14);
LABEL_7:

  v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:66 userInfo:v9];

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

id __58__MCMSQLiteDB__insertCodeSigningData_forIdentifier_error___block_invoke_117(uint64_t a1)
{
  v16[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) url];
  v4 = [v3 path];
  v5 = [v2 initWithFormat:@"sqlite3_bind_blob64 for codeSigningInfoData at %@ failed: %d", v4, sqlite3_extended_errcode(*(a1 + 40))];

  v15[0] = @"FunctionName";
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB _insertCodeSigningData:forIdentifier:error:]_block_invoke"];
  v16[0] = v6;
  v16[1] = &unk_1F5A76A98;
  v7 = *MEMORY[0x1E696A578];
  v15[1] = @"SourceFileLine";
  v15[2] = v7;
  v16[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:3];

  v9 = container_log_handle_for_category();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v14 = v5;
    _os_log_error_impl(&dword_1DF2C3000, v9, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:66 userInfo:v8];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

id __58__MCMSQLiteDB__insertCodeSigningData_forIdentifier_error___block_invoke_123(uint64_t a1)
{
  v17[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) url];
  v5 = [v4 path];
  v6 = [v2 initWithFormat:@"sqlite3_bind_text for code_signing_id_text=%@ at %@ failed: %d", v3, v5, sqlite3_extended_errcode(*(a1 + 48))];

  v16[0] = @"FunctionName";
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB _insertCodeSigningData:forIdentifier:error:]_block_invoke"];
  v17[0] = v7;
  v17[1] = &unk_1F5A76AB0;
  v8 = *MEMORY[0x1E696A578];
  v16[1] = @"SourceFileLine";
  v16[2] = v8;
  v17[2] = v6;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:3];

  v10 = container_log_handle_for_category();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v15 = v6;
    _os_log_error_impl(&dword_1DF2C3000, v10, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:66 userInfo:v9];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

id __58__MCMSQLiteDB__insertCodeSigningData_forIdentifier_error___block_invoke_129(uint64_t a1)
{
  v16[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) url];
  v4 = [v3 path];
  v5 = [v2 initWithFormat:@"sqlite3_step for %@ failed: %d", v4, sqlite3_extended_errcode(*(a1 + 40))];

  v15[0] = @"FunctionName";
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB _insertCodeSigningData:forIdentifier:error:]_block_invoke"];
  v16[0] = v6;
  v16[1] = &unk_1F5A76AC8;
  v7 = *MEMORY[0x1E696A578];
  v15[1] = @"SourceFileLine";
  v15[2] = v7;
  v16[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:3];

  v9 = container_log_handle_for_category();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v14 = v5;
    _os_log_error_impl(&dword_1DF2C3000, v9, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:66 userInfo:v8];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (BOOL)_insertCodeSigningInfo:(id)info forIdentifier:(id)identifier error:(id *)error
{
  v28[1] = *MEMORY[0x1E69E9840];
  infoCopy = info;
  identifierCopy = identifier;
  v28[0] = 0;
  v10 = 1;
  v11 = [(MCMSQLiteDB *)self _performInsertOrUpdateQuery:"UPDATE code_signing_info SET invalid=? withCodeSigningEntry:placeholder=? forIdentifier:registered_by_caller=? isUpdate:data_container_class=? WHERE code_signing_id_text=?;" error:infoCopy, identifierCopy, 1, v28];
  v12 = v28[0];
  v13 = v12;
  if (v11)
  {
    goto LABEL_12;
  }

  domain = [v12 domain];
  if ([domain isEqualToString:@"MCMErrorDomain"])
  {
    code = [v13 code];

    if (code == 68)
    {

      v25 = 0;
      v16 = [(MCMSQLiteDB *)self _performInsertOrUpdateQuery:"INSERT INTO code_signing_info (invalid withCodeSigningEntry:placeholder forIdentifier:registered_by_caller isUpdate:data_container_class error:code_signing_id_text) VALUES (?, ?, ?, ?, ?);", infoCopy, identifierCopy, 0, &v25];
      v13 = v25;
      if (v16)
      {
        v10 = 1;
        goto LABEL_12;
      }

      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __58__MCMSQLiteDB__insertCodeSigningInfo_forIdentifier_error___block_invoke_101;
      v23[3] = &unk_1E86B0B98;
      v17 = &v24;
      v24 = identifierCopy;
      v18 = __58__MCMSQLiteDB__insertCodeSigningInfo_forIdentifier_error___block_invoke_101(v23);
      goto LABEL_8;
    }
  }

  else
  {
  }

  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __58__MCMSQLiteDB__insertCodeSigningInfo_forIdentifier_error___block_invoke;
  v26[3] = &unk_1E86B0B98;
  v17 = &v27;
  v27 = identifierCopy;
  v18 = __58__MCMSQLiteDB__insertCodeSigningInfo_forIdentifier_error___block_invoke(v26);
LABEL_8:
  v19 = v18;

  if (error)
  {
    v20 = v19;
    v10 = 0;
    *error = v19;
  }

  else
  {
    v10 = 0;
  }

  v13 = v19;
LABEL_12:

  v21 = *MEMORY[0x1E69E9840];
  return v10;
}

id __58__MCMSQLiteDB__insertCodeSigningInfo_forIdentifier_error___block_invoke(uint64_t a1)
{
  v12[3] = *MEMORY[0x1E69E9840];
  v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Error performing UPDATE operation for %@", *(a1 + 32)];
  v11[0] = @"FunctionName";
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB _insertCodeSigningInfo:forIdentifier:error:]_block_invoke"];
  v12[0] = v2;
  v12[1] = &unk_1F5A76A38;
  v3 = *MEMORY[0x1E696A578];
  v11[1] = @"SourceFileLine";
  v11[2] = v3;
  v12[2] = v1;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];

  v5 = container_log_handle_for_category();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v10 = v1;
    _os_log_error_impl(&dword_1DF2C3000, v5, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:66 userInfo:v4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

id __58__MCMSQLiteDB__insertCodeSigningInfo_forIdentifier_error___block_invoke_101(uint64_t a1)
{
  v12[3] = *MEMORY[0x1E69E9840];
  v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Error performing INSERT operation for %@", *(a1 + 32)];
  v11[0] = @"FunctionName";
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB _insertCodeSigningInfo:forIdentifier:error:]_block_invoke"];
  v12[0] = v2;
  v12[1] = &unk_1F5A76A50;
  v3 = *MEMORY[0x1E696A578];
  v11[1] = @"SourceFileLine";
  v11[2] = v3;
  v12[2] = v1;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];

  v5 = container_log_handle_for_category();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v10 = v1;
    _os_log_error_impl(&dword_1DF2C3000, v5, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:66 userInfo:v4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (BOOL)_performInsertOrUpdateQuery:(const char *)query withCodeSigningEntry:(id)entry forIdentifier:(id)identifier isUpdate:(BOOL)update error:(id *)error
{
  updateCopy = update;
  v63 = *MEMORY[0x1E69E9840];
  entryCopy = entry;
  identifierCopy = identifier;
  ppStmt = 0;
  v14 = [(MCMSQLiteDB *)self db];
  if (!sqlite3_prepare_v2(v14, query, -1, &ppStmt, 0))
  {
    if (sqlite3_bind_int(ppStmt, 1, [entryCopy isInvalid]))
    {
      v53[0] = MEMORY[0x1E69E9820];
      v53[1] = 3221225472;
      v53[2] = __93__MCMSQLiteDB__performInsertOrUpdateQuery_withCodeSigningEntry_forIdentifier_isUpdate_error___block_invoke_55;
      v53[3] = &unk_1E86B0B20;
      v54 = entryCopy;
      selfCopy = self;
      v56 = v14;
      v16 = __93__MCMSQLiteDB__performInsertOrUpdateQuery_withCodeSigningEntry_forIdentifier_isUpdate_error___block_invoke_55(v53);
      v17 = v54;
    }

    else
    {
      isPlaceholder = [entryCopy isPlaceholder];
      if ([entryCopy isAdvanceCopy])
      {
        v19 = 2;
      }

      else
      {
        v19 = 0;
      }

      v20 = v19 | isPlaceholder;
      if ([entryCopy isRegisteredByKernel])
      {
        v21 = 4;
      }

      else
      {
        v21 = 0;
      }

      v22 = v20 | v21;
      if (sqlite3_bind_int(ppStmt, 2, v22))
      {
        v48[0] = MEMORY[0x1E69E9820];
        v48[1] = 3221225472;
        v48[2] = __93__MCMSQLiteDB__performInsertOrUpdateQuery_withCodeSigningEntry_forIdentifier_isUpdate_error___block_invoke_61;
        v48[3] = &unk_1E86B0BC0;
        v52 = v22;
        v49 = entryCopy;
        selfCopy2 = self;
        v51 = v14;
        v16 = __93__MCMSQLiteDB__performInsertOrUpdateQuery_withCodeSigningEntry_forIdentifier_isUpdate_error___block_invoke_61(v48);
        v17 = v49;
      }

      else if (sqlite3_bind_int(ppStmt, 3, [entryCopy isRegisteredByCaller]))
      {
        v44[0] = MEMORY[0x1E69E9820];
        v44[1] = 3221225472;
        v44[2] = __93__MCMSQLiteDB__performInsertOrUpdateQuery_withCodeSigningEntry_forIdentifier_isUpdate_error___block_invoke_67;
        v44[3] = &unk_1E86B0B20;
        v45 = entryCopy;
        selfCopy3 = self;
        v47 = v14;
        v16 = __93__MCMSQLiteDB__performInsertOrUpdateQuery_withCodeSigningEntry_forIdentifier_isUpdate_error___block_invoke_67(v44);
        v17 = v45;
      }

      else if (sqlite3_bind_int(ppStmt, 4, [entryCopy dataContainerClass]))
      {
        v40[0] = MEMORY[0x1E69E9820];
        v40[1] = 3221225472;
        v40[2] = __93__MCMSQLiteDB__performInsertOrUpdateQuery_withCodeSigningEntry_forIdentifier_isUpdate_error___block_invoke_73;
        v40[3] = &unk_1E86B0B20;
        v41 = entryCopy;
        selfCopy4 = self;
        v43 = v14;
        v16 = __93__MCMSQLiteDB__performInsertOrUpdateQuery_withCodeSigningEntry_forIdentifier_isUpdate_error___block_invoke_73(v40);
        v17 = v41;
      }

      else
      {
        if (!sqlite3_bind_text(ppStmt, 5, [identifierCopy UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL))
        {
          if (sqlite3_step(ppStmt) == 101)
          {
            if (!updateCopy || (v32 = sqlite3_changes(v14), v32 == 1))
            {
              v16 = 0;
              v23 = 1;
              goto LABEL_22;
            }

            v33[0] = MEMORY[0x1E69E9820];
            v33[1] = 3221225472;
            v33[2] = __93__MCMSQLiteDB__performInsertOrUpdateQuery_withCodeSigningEntry_forIdentifier_isUpdate_error___block_invoke_88;
            v33[3] = &unk_1E86B0AF8;
            v33[4] = self;
            v33[5] = query;
            v34 = v32;
            v15 = __93__MCMSQLiteDB__performInsertOrUpdateQuery_withCodeSigningEntry_forIdentifier_isUpdate_error___block_invoke_88(v33);
          }

          else
          {
            v35[0] = MEMORY[0x1E69E9820];
            v35[1] = 3221225472;
            v35[2] = __93__MCMSQLiteDB__performInsertOrUpdateQuery_withCodeSigningEntry_forIdentifier_isUpdate_error___block_invoke_85;
            v35[3] = &unk_1E86B0B48;
            v35[4] = self;
            v35[5] = v14;
            v15 = __93__MCMSQLiteDB__performInsertOrUpdateQuery_withCodeSigningEntry_forIdentifier_isUpdate_error___block_invoke_85(v35);
          }

          goto LABEL_3;
        }

        v36[0] = MEMORY[0x1E69E9820];
        v36[1] = 3221225472;
        v36[2] = __93__MCMSQLiteDB__performInsertOrUpdateQuery_withCodeSigningEntry_forIdentifier_isUpdate_error___block_invoke_79;
        v36[3] = &unk_1E86B0B20;
        v37 = identifierCopy;
        selfCopy5 = self;
        v39 = v14;
        v16 = __93__MCMSQLiteDB__performInsertOrUpdateQuery_withCodeSigningEntry_forIdentifier_isUpdate_error___block_invoke_79(v36);
        v17 = v37;
      }
    }

    goto LABEL_21;
  }

  v57[0] = MEMORY[0x1E69E9820];
  v57[1] = 3221225472;
  v57[2] = __93__MCMSQLiteDB__performInsertOrUpdateQuery_withCodeSigningEntry_forIdentifier_isUpdate_error___block_invoke;
  v57[3] = &unk_1E86B0B48;
  v57[4] = self;
  v57[5] = v14;
  v15 = __93__MCMSQLiteDB__performInsertOrUpdateQuery_withCodeSigningEntry_forIdentifier_isUpdate_error___block_invoke(v57);
LABEL_3:
  v16 = v15;
LABEL_21:
  v23 = 0;
LABEL_22:
  if (ppStmt && sqlite3_finalize(ppStmt))
  {
    v24 = container_log_handle_for_category();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v29 = [(MCMSQLiteDB *)self url];
      path = [v29 path];
      v31 = sqlite3_extended_errcode(v14);
      *buf = 138412546;
      v60 = path;
      v61 = 1024;
      v62 = v31;
      _os_log_error_impl(&dword_1DF2C3000, v24, OS_LOG_TYPE_ERROR, "sqlite3_finalize for %@ failed: %d", buf, 0x12u);
    }
  }

  if (error)
  {
    v25 = v23;
  }

  else
  {
    v25 = 1;
  }

  if ((v25 & 1) == 0)
  {
    v26 = v16;
    *error = v16;
  }

  v27 = *MEMORY[0x1E69E9840];
  return v23;
}

id __93__MCMSQLiteDB__performInsertOrUpdateQuery_withCodeSigningEntry_forIdentifier_isUpdate_error___block_invoke(uint64_t a1)
{
  v16[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) url];
  v4 = [v3 path];
  v5 = [v2 initWithFormat:@"sqlite3_prepare(insert) for %@ failed: %d", v4, sqlite3_extended_errcode(*(a1 + 40))];

  v15[0] = @"FunctionName";
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB _performInsertOrUpdateQuery:withCodeSigningEntry:forIdentifier:isUpdate:error:]_block_invoke"];
  v16[0] = v6;
  v16[1] = &unk_1F5A76978;
  v7 = *MEMORY[0x1E696A578];
  v15[1] = @"SourceFileLine";
  v15[2] = v7;
  v16[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:3];

  v9 = container_log_handle_for_category();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v14 = v5;
    _os_log_error_impl(&dword_1DF2C3000, v9, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:66 userInfo:v8];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

id __93__MCMSQLiteDB__performInsertOrUpdateQuery_withCodeSigningEntry_forIdentifier_isUpdate_error___block_invoke_55(uint64_t a1)
{
  v17[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) isInvalid];
  v4 = [*(a1 + 40) url];
  v5 = [v4 path];
  v6 = [v2 initWithFormat:@"sqlite3_bind_int for invalid=%d at %@ failed: %d", v3, v5, sqlite3_extended_errcode(*(a1 + 48))];

  v16[0] = @"FunctionName";
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB _performInsertOrUpdateQuery:withCodeSigningEntry:forIdentifier:isUpdate:error:]_block_invoke"];
  v17[0] = v7;
  v17[1] = &unk_1F5A76990;
  v8 = *MEMORY[0x1E696A578];
  v16[1] = @"SourceFileLine";
  v16[2] = v8;
  v17[2] = v6;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:3];

  v10 = container_log_handle_for_category();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v15 = v6;
    _os_log_error_impl(&dword_1DF2C3000, v10, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:66 userInfo:v9];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

id __93__MCMSQLiteDB__performInsertOrUpdateQuery_withCodeSigningEntry_forIdentifier_isUpdate_error___block_invoke_61(uint64_t a1)
{
  v19[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) isPlaceholder];
  v4 = [*(a1 + 32) isAdvanceCopy];
  v5 = *(a1 + 56);
  v6 = [*(a1 + 40) url];
  v7 = [v6 path];
  v8 = [v2 initWithFormat:@"sqlite3_bind_int for placeholder=%d, advance_copy=%d (flags=%d) at %@ failed: %d", v3, v4, v5, v7, sqlite3_extended_errcode(*(a1 + 48))];

  v18[0] = @"FunctionName";
  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB _performInsertOrUpdateQuery:withCodeSigningEntry:forIdentifier:isUpdate:error:]_block_invoke"];
  v19[0] = v9;
  v19[1] = &unk_1F5A769A8;
  v10 = *MEMORY[0x1E696A578];
  v18[1] = @"SourceFileLine";
  v18[2] = v10;
  v19[2] = v8;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:3];

  v12 = container_log_handle_for_category();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v17 = v8;
    _os_log_error_impl(&dword_1DF2C3000, v12, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:66 userInfo:v11];

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

id __93__MCMSQLiteDB__performInsertOrUpdateQuery_withCodeSigningEntry_forIdentifier_isUpdate_error___block_invoke_67(uint64_t a1)
{
  v17[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) isRegisteredByCaller];
  v4 = [*(a1 + 40) url];
  v5 = [v4 path];
  v6 = [v2 initWithFormat:@"sqlite3_bind_int for registered_by_caller=%d at %@ failed: %d", v3, v5, sqlite3_extended_errcode(*(a1 + 48))];

  v16[0] = @"FunctionName";
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB _performInsertOrUpdateQuery:withCodeSigningEntry:forIdentifier:isUpdate:error:]_block_invoke"];
  v17[0] = v7;
  v17[1] = &unk_1F5A769C0;
  v8 = *MEMORY[0x1E696A578];
  v16[1] = @"SourceFileLine";
  v16[2] = v8;
  v17[2] = v6;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:3];

  v10 = container_log_handle_for_category();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v15 = v6;
    _os_log_error_impl(&dword_1DF2C3000, v10, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:66 userInfo:v9];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

id __93__MCMSQLiteDB__performInsertOrUpdateQuery_withCodeSigningEntry_forIdentifier_isUpdate_error___block_invoke_73(uint64_t a1)
{
  v17[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) dataContainerClass];
  v4 = [*(a1 + 40) url];
  v5 = [v4 path];
  v6 = [v2 initWithFormat:@"sqlite3_bind_int for data_container_class=%llu at %@ failed: %d", v3, v5, sqlite3_extended_errcode(*(a1 + 48))];

  v16[0] = @"FunctionName";
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB _performInsertOrUpdateQuery:withCodeSigningEntry:forIdentifier:isUpdate:error:]_block_invoke"];
  v17[0] = v7;
  v17[1] = &unk_1F5A769D8;
  v8 = *MEMORY[0x1E696A578];
  v16[1] = @"SourceFileLine";
  v16[2] = v8;
  v17[2] = v6;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:3];

  v10 = container_log_handle_for_category();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v15 = v6;
    _os_log_error_impl(&dword_1DF2C3000, v10, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:66 userInfo:v9];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

id __93__MCMSQLiteDB__performInsertOrUpdateQuery_withCodeSigningEntry_forIdentifier_isUpdate_error___block_invoke_79(uint64_t a1)
{
  v17[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) url];
  v5 = [v4 path];
  v6 = [v2 initWithFormat:@"sqlite3_bind_text for code_signing_id=%@ at %@ failed: %d", v3, v5, sqlite3_extended_errcode(*(a1 + 48))];

  v16[0] = @"FunctionName";
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB _performInsertOrUpdateQuery:withCodeSigningEntry:forIdentifier:isUpdate:error:]_block_invoke"];
  v17[0] = v7;
  v17[1] = &unk_1F5A769F0;
  v8 = *MEMORY[0x1E696A578];
  v16[1] = @"SourceFileLine";
  v16[2] = v8;
  v17[2] = v6;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:3];

  v10 = container_log_handle_for_category();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v15 = v6;
    _os_log_error_impl(&dword_1DF2C3000, v10, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:66 userInfo:v9];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

id __93__MCMSQLiteDB__performInsertOrUpdateQuery_withCodeSigningEntry_forIdentifier_isUpdate_error___block_invoke_85(uint64_t a1)
{
  v16[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) url];
  v4 = [v3 path];
  v5 = [v2 initWithFormat:@"sqlite3_step for %@ failed: %d", v4, sqlite3_extended_errcode(*(a1 + 40))];

  v15[0] = @"FunctionName";
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB _performInsertOrUpdateQuery:withCodeSigningEntry:forIdentifier:isUpdate:error:]_block_invoke"];
  v16[0] = v6;
  v16[1] = &unk_1F5A76A08;
  v7 = *MEMORY[0x1E696A578];
  v15[1] = @"SourceFileLine";
  v15[2] = v7;
  v16[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:3];

  v9 = container_log_handle_for_category();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v14 = v5;
    _os_log_error_impl(&dword_1DF2C3000, v9, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:66 userInfo:v8];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

id __93__MCMSQLiteDB__performInsertOrUpdateQuery_withCodeSigningEntry_forIdentifier_isUpdate_error___block_invoke_88(uint64_t a1)
{
  v14[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) url];
  v5 = [v4 path];
  v6 = [v2 initWithFormat:@"sqlite3_changes for %s in %@: %d, but expecting 1", v3, v5, *(a1 + 48)];

  v13[0] = @"FunctionName";
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB _performInsertOrUpdateQuery:withCodeSigningEntry:forIdentifier:isUpdate:error:]_block_invoke"];
  v14[0] = v7;
  v14[1] = &unk_1F5A76A20;
  v8 = *MEMORY[0x1E696A578];
  v13[1] = @"SourceFileLine";
  v13[2] = v8;
  v14[2] = v6;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];

  v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:68 userInfo:v9];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (BOOL)_insertChildIdentifier:(id)identifier forParentIdentifier:(id)parentIdentifier error:(id *)error
{
  v19[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  parentIdentifierCopy = parentIdentifier;
  v19[0] = 0;
  v10 = [(MCMSQLiteDB *)self _performTwoParameterQuery:"INSERT OR REPLACE INTO child_bundles (parent_id withTextInputOne:child_code_signing_id_text) SELECT id andTextInputTwo:? FROM code_signing_info WHERE code_signing_id_text = ?;" expectedChanges:identifierCopy error:parentIdentifierCopy, 0xFFFFFFFFLL, v19];
  v11 = v19[0];
  if (v10)
  {
    peerageDelegate = [(MCMSQLiteDB *)self peerageDelegate];
    [peerageDelegate codeSigningDB:self addChildIdentifier:identifierCopy forParentIdentifier:parentIdentifierCopy];
  }

  else
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __64__MCMSQLiteDB__insertChildIdentifier_forParentIdentifier_error___block_invoke;
    v17[3] = &unk_1E86B0B98;
    v18 = identifierCopy;
    v13 = __64__MCMSQLiteDB__insertChildIdentifier_forParentIdentifier_error___block_invoke(v17);

    if (error)
    {
      v14 = v13;
      *error = v13;
    }

    v11 = v13;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v10;
}

id __64__MCMSQLiteDB__insertChildIdentifier_forParentIdentifier_error___block_invoke(uint64_t a1)
{
  v12[3] = *MEMORY[0x1E69E9840];
  v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Error performing INSERT operation for child %@", *(a1 + 32)];
  v11[0] = @"FunctionName";
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB _insertChildIdentifier:forParentIdentifier:error:]_block_invoke"];
  v12[0] = v2;
  v12[1] = &unk_1F5A76960;
  v3 = *MEMORY[0x1E696A578];
  v11[1] = @"SourceFileLine";
  v11[2] = v3;
  v12[2] = v1;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];

  v5 = container_log_handle_for_category();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v10 = v1;
    _os_log_error_impl(&dword_1DF2C3000, v5, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:66 userInfo:v4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (BOOL)_performSingleParameterQuery:(const char *)query withTextInput:(id)input error:(id *)error
{
  v7 = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E69E9840];

  return [(MCMSQLiteDB *)self _performSingleParameterQuery:query withTextInput:input expectedChanges:0xFFFFFFFFLL error:error];
}

- (BOOL)_performTwoParameterQuery:(const char *)query withTextInputOne:(id)one andTextInputTwo:(id)two expectedChanges:(int)changes error:(id *)error
{
  v46 = *MEMORY[0x1E69E9840];
  oneCopy = one;
  twoCopy = two;
  ppStmt = 0;
  v14 = [(MCMSQLiteDB *)self db];
  if (!sqlite3_prepare_v2(v14, query, -1, &ppStmt, 0))
  {
    if (sqlite3_bind_text(ppStmt, 1, [oneCopy UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL))
    {
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __96__MCMSQLiteDB__performTwoParameterQuery_withTextInputOne_andTextInputTwo_expectedChanges_error___block_invoke_26;
      v36[3] = &unk_1E86B0B20;
      v37 = oneCopy;
      selfCopy = self;
      v39 = v14;
      v16 = __96__MCMSQLiteDB__performTwoParameterQuery_withTextInputOne_andTextInputTwo_expectedChanges_error___block_invoke_26(v36);
      v17 = v37;
    }

    else
    {
      if (!twoCopy || !sqlite3_bind_text(ppStmt, 2, [twoCopy UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL))
      {
        if (sqlite3_step(ppStmt) == 101)
        {
          if (changes == -1 || (v24 = sqlite3_changes(v14), v24 == changes))
          {
            v16 = 0;
            v18 = 1;
            goto LABEL_8;
          }

          v28[0] = MEMORY[0x1E69E9820];
          v28[1] = 3221225472;
          v28[2] = __96__MCMSQLiteDB__performTwoParameterQuery_withTextInputOne_andTextInputTwo_expectedChanges_error___block_invoke_41;
          v28[3] = &unk_1E86B0B70;
          v28[4] = self;
          v28[5] = query;
          v29 = v24;
          changesCopy = changes;
          v15 = __96__MCMSQLiteDB__performTwoParameterQuery_withTextInputOne_andTextInputTwo_expectedChanges_error___block_invoke_41(v28);
        }

        else
        {
          v31[0] = MEMORY[0x1E69E9820];
          v31[1] = 3221225472;
          v31[2] = __96__MCMSQLiteDB__performTwoParameterQuery_withTextInputOne_andTextInputTwo_expectedChanges_error___block_invoke_35;
          v31[3] = &unk_1E86B0B48;
          v31[4] = self;
          v31[5] = v14;
          v15 = __96__MCMSQLiteDB__performTwoParameterQuery_withTextInputOne_andTextInputTwo_expectedChanges_error___block_invoke_35(v31);
        }

        goto LABEL_3;
      }

      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __96__MCMSQLiteDB__performTwoParameterQuery_withTextInputOne_andTextInputTwo_expectedChanges_error___block_invoke_32;
      v32[3] = &unk_1E86B0B20;
      v33 = twoCopy;
      selfCopy2 = self;
      v35 = v14;
      v16 = __96__MCMSQLiteDB__performTwoParameterQuery_withTextInputOne_andTextInputTwo_expectedChanges_error___block_invoke_32(v32);
      v17 = v33;
    }

    goto LABEL_7;
  }

  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __96__MCMSQLiteDB__performTwoParameterQuery_withTextInputOne_andTextInputTwo_expectedChanges_error___block_invoke;
  v40[3] = &unk_1E86B0B48;
  v40[4] = self;
  v40[5] = v14;
  v15 = __96__MCMSQLiteDB__performTwoParameterQuery_withTextInputOne_andTextInputTwo_expectedChanges_error___block_invoke(v40);
LABEL_3:
  v16 = v15;
LABEL_7:
  v18 = 0;
LABEL_8:
  if (ppStmt && sqlite3_finalize(ppStmt))
  {
    v19 = container_log_handle_for_category();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v25 = [(MCMSQLiteDB *)self url];
      path = [v25 path];
      v27 = sqlite3_extended_errcode(v14);
      *buf = 138412546;
      v43 = path;
      v44 = 1024;
      v45 = v27;
      _os_log_error_impl(&dword_1DF2C3000, v19, OS_LOG_TYPE_ERROR, "sqlite3_finalize for %@ failed: %d", buf, 0x12u);
    }
  }

  if (error)
  {
    v20 = v18;
  }

  else
  {
    v20 = 1;
  }

  if ((v20 & 1) == 0)
  {
    v21 = v16;
    *error = v16;
  }

  v22 = *MEMORY[0x1E69E9840];
  return v18;
}

id __96__MCMSQLiteDB__performTwoParameterQuery_withTextInputOne_andTextInputTwo_expectedChanges_error___block_invoke(uint64_t a1)
{
  v16[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) url];
  v4 = [v3 path];
  v5 = [v2 initWithFormat:@"sqlite3_prepare(insert) for %@ failed: %d", v4, sqlite3_extended_errcode(*(a1 + 40))];

  v15[0] = @"FunctionName";
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB _performTwoParameterQuery:withTextInputOne:andTextInputTwo:expectedChanges:error:]_block_invoke"];
  v16[0] = v6;
  v16[1] = &unk_1F5A768E8;
  v7 = *MEMORY[0x1E696A578];
  v15[1] = @"SourceFileLine";
  v15[2] = v7;
  v16[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:3];

  v9 = container_log_handle_for_category();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v14 = v5;
    _os_log_error_impl(&dword_1DF2C3000, v9, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:66 userInfo:v8];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

id __96__MCMSQLiteDB__performTwoParameterQuery_withTextInputOne_andTextInputTwo_expectedChanges_error___block_invoke_26(uint64_t a1)
{
  v17[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) url];
  v5 = [v4 path];
  v6 = [v2 initWithFormat:@"sqlite3_bind_text for identifier=%@ at %@ failed: %d", v3, v5, sqlite3_extended_errcode(*(a1 + 48))];

  v16[0] = @"FunctionName";
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB _performTwoParameterQuery:withTextInputOne:andTextInputTwo:expectedChanges:error:]_block_invoke"];
  v17[0] = v7;
  v17[1] = &unk_1F5A76900;
  v8 = *MEMORY[0x1E696A578];
  v16[1] = @"SourceFileLine";
  v16[2] = v8;
  v17[2] = v6;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:3];

  v10 = container_log_handle_for_category();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v15 = v6;
    _os_log_error_impl(&dword_1DF2C3000, v10, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:66 userInfo:v9];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

id __96__MCMSQLiteDB__performTwoParameterQuery_withTextInputOne_andTextInputTwo_expectedChanges_error___block_invoke_32(uint64_t a1)
{
  v17[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) url];
  v5 = [v4 path];
  v6 = [v2 initWithFormat:@"sqlite3_bind_text for identifier=%@ at %@ failed: %d", v3, v5, sqlite3_extended_errcode(*(a1 + 48))];

  v16[0] = @"FunctionName";
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB _performTwoParameterQuery:withTextInputOne:andTextInputTwo:expectedChanges:error:]_block_invoke"];
  v17[0] = v7;
  v17[1] = &unk_1F5A76918;
  v8 = *MEMORY[0x1E696A578];
  v16[1] = @"SourceFileLine";
  v16[2] = v8;
  v17[2] = v6;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:3];

  v10 = container_log_handle_for_category();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v15 = v6;
    _os_log_error_impl(&dword_1DF2C3000, v10, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:66 userInfo:v9];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

id __96__MCMSQLiteDB__performTwoParameterQuery_withTextInputOne_andTextInputTwo_expectedChanges_error___block_invoke_35(uint64_t a1)
{
  v16[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) url];
  v4 = [v3 path];
  v5 = [v2 initWithFormat:@"sqlite3_step for %@ failed: %d", v4, sqlite3_extended_errcode(*(a1 + 40))];

  v15[0] = @"FunctionName";
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB _performTwoParameterQuery:withTextInputOne:andTextInputTwo:expectedChanges:error:]_block_invoke"];
  v16[0] = v6;
  v16[1] = &unk_1F5A76930;
  v7 = *MEMORY[0x1E696A578];
  v15[1] = @"SourceFileLine";
  v15[2] = v7;
  v16[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:3];

  v9 = container_log_handle_for_category();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v14 = v5;
    _os_log_error_impl(&dword_1DF2C3000, v9, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:66 userInfo:v8];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

id __96__MCMSQLiteDB__performTwoParameterQuery_withTextInputOne_andTextInputTwo_expectedChanges_error___block_invoke_41(uint64_t a1)
{
  v14[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) url];
  v5 = [v4 path];
  v6 = [v2 initWithFormat:@"sqlite3_changes for %s in %@: %d, but expecting %d", v3, v5, *(a1 + 48), *(a1 + 52)];

  v13[0] = @"FunctionName";
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB _performTwoParameterQuery:withTextInputOne:andTextInputTwo:expectedChanges:error:]_block_invoke"];
  v14[0] = v7;
  v14[1] = &unk_1F5A76948;
  v8 = *MEMORY[0x1E696A578];
  v13[1] = @"SourceFileLine";
  v13[2] = v8;
  v14[2] = v6;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];

  v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:68 userInfo:v9];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (void)closeDB
{
  v16 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  v3 = container_log_handle_for_category();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v8 = [(MCMSQLiteDB *)self url];
    path = [v8 path];
    v12 = 138412290;
    v13 = path;
    _os_log_debug_impl(&dword_1DF2C3000, v3, OS_LOG_TYPE_DEBUG, "closing %@", &v12, 0xCu);
  }

  v4 = sqlite3_close([(MCMSQLiteDB *)self db]);
  if (v4)
  {
    v5 = v4;
    v6 = container_log_handle_for_category();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v10 = [(MCMSQLiteDB *)self url];
      path2 = [v10 path];
      v12 = 138412546;
      v13 = path2;
      v14 = 1024;
      v15 = v5;
      _os_log_error_impl(&dword_1DF2C3000, v6, OS_LOG_TYPE_ERROR, "sqlite3_close for %@ failed: %d", &v12, 0x12u);
    }
  }

  [(MCMSQLiteDB *)self setDb:0];
  v7 = *MEMORY[0x1E69E9840];
}

- (BOOL)_sqliteExec:(id)exec error:(id *)error
{
  errmsg[1] = *MEMORY[0x1E69E9840];
  execCopy = exec;
  errmsg[0] = 0;
  v7 = sqlite3_exec(-[MCMSQLiteDB db](self, "db"), [execCopy UTF8String], 0, 0, errmsg);
  if (v7)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __33__MCMSQLiteDB__sqliteExec_error___block_invoke;
    v12[3] = &unk_1E86B0B20;
    v13 = execCopy;
    selfCopy = self;
    v15 = errmsg[0];
    v8 = __33__MCMSQLiteDB__sqliteExec_error___block_invoke(v12);
    sqlite3_free(errmsg[0]);

    if (error)
    {
      v9 = v8;
      *error = v8;
    }
  }

  else
  {
    v8 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v7 == 0;
}

id __33__MCMSQLiteDB__sqliteExec_error___block_invoke(uint64_t a1)
{
  v16[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) url];
  v5 = [v2 initWithFormat:@"%@ on %@ failed: %s", v3, v4, *(a1 + 48)];

  v15[0] = @"FunctionName";
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMSQLiteDB _sqliteExec:error:]_block_invoke"];
  v16[0] = v6;
  v16[1] = &unk_1F5A768D0;
  v7 = *MEMORY[0x1E696A578];
  v15[1] = @"SourceFileLine";
  v15[2] = v7;
  v16[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:3];

  v9 = container_log_handle_for_category();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v14 = v5;
    _os_log_error_impl(&dword_1DF2C3000, v9, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:66 userInfo:v8];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  [(MCMSQLiteDB *)self closeDB];
  v4.receiver = self;
  v4.super_class = MCMSQLiteDB;
  [(MCMSQLiteDB *)&v4 dealloc];
  v3 = *MEMORY[0x1E69E9840];
}

- (MCMSQLiteDB)initWithURL:(id)l queue:(id)queue error:(id *)error
{
  v19 = *MEMORY[0x1E69E9840];
  lCopy = l;
  queueCopy = queue;
  dispatch_assert_queue_V2(queueCopy);
  v18.receiver = self;
  v18.super_class = MCMSQLiteDB;
  v11 = [(MCMSQLiteDB *)&v18 init];
  v12 = v11;
  if (v11 && ((objc_storeStrong(&v11->_queue, queue), objc_storeStrong(&v12->_url, l), !v12->_url) || ((v13 = [objc_opt_class() openDBWithURL:v12->_url queue:queueCopy error:error], v12->_db = v13, v12->_url) ? (v14 = v13 == 0) : (v14 = 1), v14)))
  {
    v15 = 0;
  }

  else
  {
    v15 = v12;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

+ (sqlite3)openDBWithURL:(id)l queue:(id)queue error:(id *)error
{
  v37 = *MEMORY[0x1E69E9840];
  lCopy = l;
  queueCopy = queue;
  dispatch_assert_queue_V2(queueCopy);
  ppDb = 0;
  v9 = container_log_handle_for_category();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    path = [lCopy path];
    *buf = 138412290;
    *&buf[4] = path;
    _os_log_debug_impl(&dword_1DF2C3000, v9, OS_LOG_TYPE_DEBUG, "Opening [%@]", buf, 0xCu);
  }

  if (sqlite3_open_v2([lCopy fileSystemRepresentation], &ppDb, 4194310, 0))
  {
    v10 = sqlite3_extended_errcode(ppDb);
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __41__MCMSQLiteDB_openDBWithURL_queue_error___block_invoke;
    v26[3] = &unk_1E86B0AF8;
    v11 = lCopy;
    v29 = v10;
    v27 = v11;
    v28 = ppDb;
    v12 = __41__MCMSQLiteDB_openDBWithURL_queue_error___block_invoke(v26);
    v13 = container_log_handle_for_category();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      path2 = [v11 path];
      *buf = 138412546;
      *&buf[4] = path2;
      *&buf[12] = 1024;
      *&buf[14] = v10;
      _os_log_error_impl(&dword_1DF2C3000, v13, OS_LOG_TYPE_ERROR, "opening %@ failed: xerr = %d", buf, 0x12u);
    }

    sqlite3_close(ppDb);
    goto LABEL_8;
  }

  errmsg = 0;
  v14 = sqlite3_exec(ppDb, "PRAGMA locking_mode = EXCLUSIVE;PRAGMA journal_mode = WAL;PRAGMA foreign_keys = ON;PRAGMA auto_vacuum = FULL;CREATE TABLE IF NOT EXISTS code_signing_info(id INTEGER PRIMARY KEY AUTOINCREMENT,code_signing_id_text TEXT NOT NULL UNIQUE,invalid INTEGER NOT NULL DEFAULT 0,placeholder INTEGER NOT NULL DEFAULT 0,registered_by_caller INTEGER NOT NULL DEFAULT 0,data_container_class INTEGER NOT NULL DEFAULT 0);CREATE TABLE IF NOT EXISTS code_signing_data(id INTEGER PRIMARY KEY AUTOINCREMENT,cs_info_id INTEGER NOT NULL UNIQUE,data BLOB NOT NULL,FOREIGN KEY(cs_info_id) REFERENCES code_signing_info(id) ON DELETE CASCADE);CREATE TABLE IF NOT EXISTS child_bundles(id INTEGER PRIMARY KEY AUTOINCREMENT,child_code_signing_id_text TEXT NOT NULL UNIQUE,parent_id INTEGER NOT NULL,FOREIGN KEY(parent_id) REFERENCES code_signing_info(id) ON DELETE CASCADE);CREATE INDEX IF NOT EXISTS code_signing_id_text_idx ON code_signing_info(code_signing_id_text);CREATE INDEX IF NOT EXISTS cs_info_id_idx ON code_signing_data(cs_info_id);CREATE INDEX IF NOT EXISTS parent_id_idx ON child_bundles(parent_id);", 0, 0, &errmsg);
  v12 = 0;
  if (!v14)
  {
LABEL_8:
    v15 = ppDb;
    if (error)
    {
      if (!ppDb)
      {
        v16 = v12;
        *error = v12;
        v15 = ppDb;
      }
    }

    v17 = *MEMORY[0x1E69E9840];
    return v15;
  }

  v21 = v14;
  v22 = sqlite3_extended_errcode(ppDb);
  v23 = container_log_handle_for_category();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    path3 = [lCopy path];
    *buf = 138412546;
    *&buf[4] = path3;
    *&buf[12] = 2080;
    *&buf[14] = errmsg;
    _os_log_error_impl(&dword_1DF2C3000, v23, OS_LOG_TYPE_ERROR, "table create for %@ failed: %s", buf, 0x16u);
  }

  sqlite3_free(errmsg);
  v36 = 0;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  memset(buf, 0, sizeof(buf));
  snprintf(buf, 0x64uLL, "Failed to initialize database, err = %d, xerr = %d", v21, v22);
  sqlite3_close(ppDb);
  result = _os_crash();
  __break(1u);
  return result;
}

id __41__MCMSQLiteDB_openDBWithURL_queue_error___block_invoke(uint64_t a1)
{
  v12[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) path];
  v4 = [v2 initWithFormat:@"opening %@ failed: xerr = %d, errmsg: %s", v3, *(a1 + 48), sqlite3_errmsg(*(a1 + 40))];

  v11[0] = @"FunctionName";
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[MCMSQLiteDB openDBWithURL:queue:error:]_block_invoke"];
  v12[0] = v5;
  v12[1] = &unk_1F5A768B8;
  v6 = *MEMORY[0x1E696A578];
  v11[1] = @"SourceFileLine";
  v11[2] = v6;
  v12[2] = v4;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];

  v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.containermanagerd.SQLite" code:sqlite3_extended_errcode(*(a1 + 40)) userInfo:v7];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (BOOL)moveDBWithURL:(id)l toURL:(id)rL queue:(id)queue error:(id *)error
{
  v44 = *MEMORY[0x1E69E9840];
  lCopy = l;
  rLCopy = rL;
  dispatch_assert_queue_V2(queue);
  ppDb = 0;
  if (sqlite3_open_v2([lCopy fileSystemRepresentation], &ppDb, 1, 0))
  {
    v11 = sqlite3_extended_errcode(ppDb);
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __47__MCMSQLiteDB_moveDBWithURL_toURL_queue_error___block_invoke;
    v33[3] = &unk_1E86B0AF8;
    v12 = lCopy;
    v36 = v11;
    v34 = v12;
    v35 = ppDb;
    v13 = __47__MCMSQLiteDB_moveDBWithURL_toURL_queue_error___block_invoke(v33);
    v14 = container_log_handle_for_category();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      path = [v12 path];
      *buf = 138412546;
      v39 = path;
      v40 = 1024;
      LODWORD(v41) = v11;
      _os_log_error_impl(&dword_1DF2C3000, v14, OS_LOG_TYPE_ERROR, "opening %@ failed: xerr = %d", buf, 0x12u);
    }

    v15 = 0;
    v16 = v34;
  }

  else
  {
    [rLCopy fileSystemRepresentation];
    if (_sqlite3_db_copy_compact())
    {
      v17 = sqlite3_extended_errcode(ppDb);
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __47__MCMSQLiteDB_moveDBWithURL_toURL_queue_error___block_invoke_5;
      v29[3] = &unk_1E86B0AF8;
      v18 = lCopy;
      v32 = v17;
      v30 = v18;
      v31 = ppDb;
      v13 = __47__MCMSQLiteDB_moveDBWithURL_toURL_queue_error___block_invoke_5(v29);
      v19 = container_log_handle_for_category();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        path2 = [v18 path];
        path3 = [rLCopy path];
        *buf = 138412802;
        v39 = path2;
        v40 = 2112;
        v41 = path3;
        v42 = 1024;
        v43 = v17;
        _os_log_error_impl(&dword_1DF2C3000, v19, OS_LOG_TYPE_ERROR, "copying [%@] to [%@] failed: xerr = %d", buf, 0x1Cu);
      }

      v15 = 0;
      v16 = v30;
    }

    else
    {
      v16 = container_log_handle_for_category();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        path4 = [lCopy path];
        path5 = [rLCopy path];
        *buf = 138412546;
        v39 = path4;
        v40 = 2112;
        v41 = path5;
        _os_log_debug_impl(&dword_1DF2C3000, v16, OS_LOG_TYPE_DEBUG, "Moved [%@] to [%@]", buf, 0x16u);
      }

      v13 = 0;
      v15 = 1;
    }
  }

  if (ppDb)
  {
    sqlite3_close(ppDb);
  }

  if (error)
  {
    v20 = v15;
  }

  else
  {
    v20 = 1;
  }

  if ((v20 & 1) == 0)
  {
    v21 = v13;
    *error = v13;
  }

  v22 = *MEMORY[0x1E69E9840];
  return v15;
}

id __47__MCMSQLiteDB_moveDBWithURL_toURL_queue_error___block_invoke(uint64_t a1)
{
  v12[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) path];
  v4 = [v2 initWithFormat:@"opening %@ failed: xerr = %x, errmsg: %s", v3, *(a1 + 48), sqlite3_errmsg(*(a1 + 40))];

  v11[0] = @"FunctionName";
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[MCMSQLiteDB moveDBWithURL:toURL:queue:error:]_block_invoke"];
  v12[0] = v5;
  v12[1] = &unk_1F5A76888;
  v6 = *MEMORY[0x1E696A578];
  v11[1] = @"SourceFileLine";
  v11[2] = v6;
  v12[2] = v4;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];

  v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.containermanagerd.SQLite" code:sqlite3_extended_errcode(*(a1 + 40)) userInfo:v7];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

id __47__MCMSQLiteDB_moveDBWithURL_toURL_queue_error___block_invoke_5(uint64_t a1)
{
  v12[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) path];
  v4 = [v2 initWithFormat:@"opening %@ failed: xerr = %x, errmsg: %s", v3, *(a1 + 48), sqlite3_errmsg(*(a1 + 40))];

  v11[0] = @"FunctionName";
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[MCMSQLiteDB moveDBWithURL:toURL:queue:error:]_block_invoke"];
  v12[0] = v5;
  v12[1] = &unk_1F5A768A0;
  v6 = *MEMORY[0x1E696A578];
  v11[1] = @"SourceFileLine";
  v11[2] = v6;
  v12[2] = v4;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];

  v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.containermanagerd.SQLite" code:sqlite3_extended_errcode(*(a1 + 40)) userInfo:v7];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

@end