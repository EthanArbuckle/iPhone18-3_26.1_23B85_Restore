@interface FCFileCoordinatedTodayPersonalizationUpdate
- (BOOL)readSyncWithAccessor:(id)accessor;
- (FCFileCoordinatedTodayPersonalizationUpdate)init;
- (FCFileCoordinatedTodayPersonalizationUpdate)initWithFileURL:(id)l;
- (id)consumeUpdates;
- (void)clearUpdates;
- (void)submitUpdate:(id)update;
@end

@implementation FCFileCoordinatedTodayPersonalizationUpdate

- (FCFileCoordinatedTodayPersonalizationUpdate)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCFileCoordinatedTodayPersonalizationUpdate init]";
    v10 = 2080;
    v11 = "FCFileCoordinatedTodayPersonalizationUpdate.m";
    v12 = 1024;
    v13 = 46;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCFileCoordinatedTodayPersonalizationUpdate init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCFileCoordinatedTodayPersonalizationUpdate)initWithFileURL:(id)l
{
  v23 = *MEMORY[0x1E69E9840];
  lCopy = l;
  if (!lCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "fileURL"];
    *buf = 136315906;
    v16 = "[FCFileCoordinatedTodayPersonalizationUpdate initWithFileURL:]";
    v17 = 2080;
    v18 = "FCFileCoordinatedTodayPersonalizationUpdate.m";
    v19 = 1024;
    v20 = 51;
    v21 = 2114;
    v22 = v13;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v14.receiver = self;
  v14.super_class = FCFileCoordinatedTodayPersonalizationUpdate;
  v5 = [(FCFileCoordinatedTodayPersonalizationUpdate *)&v14 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [[FCFileCoordinatedDictionary alloc] initWithFileURL:lCopy allowedClasses:v8];
    fileCoordinatedDictionary = v5->_fileCoordinatedDictionary;
    v5->_fileCoordinatedDictionary = v9;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)consumeUpdates
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__39;
  v10 = __Block_byref_object_dispose__39;
  v11 = 0;
  fileCoordinatedDictionary = [(FCFileCoordinatedTodayPersonalizationUpdate *)self fileCoordinatedDictionary];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __61__FCFileCoordinatedTodayPersonalizationUpdate_consumeUpdates__block_invoke;
  v5[3] = &unk_1E7C40CF8;
  v5[4] = &v6;
  [fileCoordinatedDictionary writeSyncWithAccessor:v5];

  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __61__FCFileCoordinatedTodayPersonalizationUpdate_consumeUpdates__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 objectForKeyedSubscript:@"TodayPersonalizationUpdateKey"];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  [v6 setObject:0 forKeyedSubscript:@"TodayPersonalizationUpdateKey"];
}

- (BOOL)readSyncWithAccessor:(id)accessor
{
  v21 = *MEMORY[0x1E69E9840];
  accessorCopy = accessor;
  if (!accessorCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "accessor"];
    *buf = 136315906;
    v14 = "[FCFileCoordinatedTodayPersonalizationUpdate readSyncWithAccessor:]";
    v15 = 2080;
    v16 = "FCFileCoordinatedTodayPersonalizationUpdate.m";
    v17 = 1024;
    v18 = 74;
    v19 = 2114;
    v20 = v10;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  fileCoordinatedDictionary = [(FCFileCoordinatedTodayPersonalizationUpdate *)self fileCoordinatedDictionary];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __68__FCFileCoordinatedTodayPersonalizationUpdate_readSyncWithAccessor___block_invoke;
  v11[3] = &unk_1E7C38D88;
  v12 = accessorCopy;
  v6 = accessorCopy;
  v7 = [fileCoordinatedDictionary readSyncWithAccessor:v11];

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

void __68__FCFileCoordinatedTodayPersonalizationUpdate_readSyncWithAccessor___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if (v6 && ([v6 objectForKeyedSubscript:@"TodayPersonalizationUpdateKey"], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    v4 = *(a1 + 32);
    v5 = [v6 objectForKeyedSubscript:@"TodayPersonalizationUpdateKey"];
    (*(v4 + 16))(v4, v5);
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)submitUpdate:(id)update
{
  v20 = *MEMORY[0x1E69E9840];
  updateCopy = update;
  if (!updateCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "update"];
    *buf = 136315906;
    v13 = "[FCFileCoordinatedTodayPersonalizationUpdate submitUpdate:]";
    v14 = 2080;
    v15 = "FCFileCoordinatedTodayPersonalizationUpdate.m";
    v16 = 1024;
    v17 = 91;
    v18 = 2114;
    v19 = v9;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v5 = FCProgressivePersonalizationLog;
  if (os_log_type_enabled(FCProgressivePersonalizationLog, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v13 = @"Storing a personalization event from News Today Widget.";
    _os_log_impl(&dword_1B63EF000, v5, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  fileCoordinatedDictionary = [(FCFileCoordinatedTodayPersonalizationUpdate *)self fileCoordinatedDictionary];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __60__FCFileCoordinatedTodayPersonalizationUpdate_submitUpdate___block_invoke;
  v10[3] = &unk_1E7C36EC8;
  v11 = updateCopy;
  v7 = updateCopy;
  [fileCoordinatedDictionary writeSyncWithAccessor:v10];

  v8 = *MEMORY[0x1E69E9840];
}

void __60__FCFileCoordinatedTodayPersonalizationUpdate_submitUpdate___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 objectForKeyedSubscript:@"TodayPersonalizationUpdateKey"];

  if (!v3)
  {
    v4 = [MEMORY[0x1E695DF70] array];
    [v6 setObject:v4 forKeyedSubscript:@"TodayPersonalizationUpdateKey"];
  }

  v5 = [v6 objectForKeyedSubscript:@"TodayPersonalizationUpdateKey"];
  [v5 addObject:*(a1 + 32)];
}

- (void)clearUpdates
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = FCProgressivePersonalizationLog;
  if (os_log_type_enabled(FCProgressivePersonalizationLog, OS_LOG_TYPE_DEBUG))
  {
    v6 = 138412290;
    v7 = @"Clearing events from News Today Widget";
    _os_log_impl(&dword_1B63EF000, v3, OS_LOG_TYPE_DEBUG, "%@", &v6, 0xCu);
  }

  fileCoordinatedDictionary = [(FCFileCoordinatedTodayPersonalizationUpdate *)self fileCoordinatedDictionary];
  [fileCoordinatedDictionary writeWithAccessor:&__block_literal_global_83 completion:0];

  v5 = *MEMORY[0x1E69E9840];
}

@end