@interface MTPersistentSyncChangeStore
- (MTPersistentSyncChangeStore)initWithDataModel:(id)a3;
- (id)loadChanges;
- (void)_removeSyncDataFile;
- (void)persistChanges:(id)a3;
- (void)setupSyncDataFileForDataModel:(id)a3;
@end

@implementation MTPersistentSyncChangeStore

- (MTPersistentSyncChangeStore)initWithDataModel:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = MTPersistentSyncChangeStore;
  v5 = [(MTPersistentSyncChangeStore *)&v12 init];
  if (v5)
  {
    v6 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v7 = MEMORY[0x1E69B3790];
    v8 = dispatch_queue_create("com.apple.MTSyncStore.archive-queue", v6);
    v9 = [v7 schedulerWithDispatchQueue:v8];
    archiverScheduler = v5->_archiverScheduler;
    v5->_archiverScheduler = v9;

    [(MTPersistentSyncChangeStore *)v5 setupSyncDataFileForDataModel:v4];
  }

  return v5;
}

- (void)setupSyncDataFileForDataModel:(id)a3
{
  v4 = a3;
  v5 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  v6 = [v5 firstObject];
  v7 = [MEMORY[0x1E696AAE8] mainBundle];
  v8 = [v7 bundleIdentifier];
  v9 = [v6 stringByAppendingPathComponent:v8];
  [(MTPersistentSyncChangeStore *)self setSyncDataPath:v9];

  v12 = [v4 dataFileName];

  v10 = [(MTPersistentSyncChangeStore *)self syncDataPath];
  v11 = [v10 stringByAppendingPathComponent:v12];
  [(MTPersistentSyncChangeStore *)self setSyncDataFile:v11];
}

- (void)persistChanges:(id)a3
{
  v4 = a3;
  v5 = [(MTPersistentSyncChangeStore *)self archiverScheduler];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__MTPersistentSyncChangeStore_persistChanges___block_invoke;
  v7[3] = &unk_1E7B0C928;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 performBlock:v7];
}

void __46__MTPersistentSyncChangeStore_persistChanges___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v3 = (a1 + 32);
  v4 = [*(a1 + 32) syncDataFile];
  v5 = [v2 fileExistsAtPath:v4];

  if (v5)
  {
    goto LABEL_7;
  }

  v6 = MTLogForCategory(6);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *v3;
    v8 = [*v3 syncDataPath];
    *buf = 138543618;
    v24 = v7;
    v25 = 2114;
    v26 = v8;
    _os_log_impl(&dword_1B1F9F000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ creating sync directory at %{public}@", buf, 0x16u);
  }

  v9 = [MEMORY[0x1E696AC08] defaultManager];
  v10 = [*v3 syncDataPath];
  v22 = 0;
  [v9 createDirectoryAtPath:v10 withIntermediateDirectories:1 attributes:0 error:&v22];
  v11 = v22;

  if (!v11)
  {
LABEL_7:
    v11 = [[MTSyncChangeArchiver alloc] initRequiringSecureCoding:1];
    [v11 encodeObject:*(a1 + 40) forKey:@"MTSyncStoragePendingChanges"];
    LODWORD(v13) = 4.0;
    [v11 encodeFloat:@"MTSyncStorageVersion" forKey:v13];
    [v11 finishEncoding];
    v12 = [v11 encodedData];
    v14 = [*(a1 + 32) syncDataFile];
    v15 = [v12 writeToFile:v14 atomically:1];

    v16 = MTLogForCategory(6);
    v17 = v16;
    if (v15)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v18 = *(a1 + 32);
        v19 = *(a1 + 40);
        v20 = [v18 syncDataFile];
        *buf = 138543874;
        v24 = v18;
        v25 = 2114;
        v26 = v19;
        v27 = 2114;
        v28 = v20;
        _os_log_impl(&dword_1B1F9F000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ wrote pending changes %{public}@ to file %{public}@", buf, 0x20u);
      }
    }

    else if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      __46__MTPersistentSyncChangeStore_persistChanges___block_invoke_cold_2((a1 + 32));
    }
  }

  else
  {
    v12 = MTLogForCategory(6);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __46__MTPersistentSyncChangeStore_persistChanges___block_invoke_cold_1((a1 + 32));
    }
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (id)loadChanges
{
  v3 = objc_opt_new();
  v4 = [(MTPersistentSyncChangeStore *)self archiverScheduler];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __42__MTPersistentSyncChangeStore_loadChanges__block_invoke;
  v9[3] = &unk_1E7B0C928;
  v9[4] = self;
  v5 = v3;
  v10 = v5;
  [v4 performBlock:v9];

  v6 = v10;
  v7 = v5;

  return v5;
}

void __42__MTPersistentSyncChangeStore_loadChanges__block_invoke(uint64_t a1)
{
  v35[3] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v3 = (a1 + 32);
  v4 = [*(a1 + 32) syncDataFile];
  v5 = [v2 fileExistsAtPath:v4 isDirectory:0];

  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x1E695DEF0]);
    v7 = [*v3 syncDataFile];
    v8 = [v6 initWithContentsOfFile:v7];

    if (v8)
    {
      v28 = 0;
      v9 = [[MTSyncChangeUnarchiver alloc] initForReadingFromData:v8 error:&v28];
      v10 = v28;
      if (v10)
      {
        v11 = MTLogForCategory(6);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          __42__MTPersistentSyncChangeStore_loadChanges__block_invoke_cold_1((a1 + 32));
        }

        [*(a1 + 32) _removeSyncDataFile];
        [*(a1 + 40) finishWithResult:MEMORY[0x1E695E0F0]];
      }

      else
      {
        [v9 decodeFloatForKey:@"MTSyncStorageVersion"];
        if (v15 >= 4.0)
        {
          v18 = MEMORY[0x1E695DFD8];
          v35[0] = objc_opt_class();
          v35[1] = objc_opt_class();
          v35[2] = objc_opt_class();
          v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:3];
          v20 = [v18 setWithArray:v19];
          v21 = [v9 decodeObjectOfClasses:v20 forKey:@"MTSyncStoragePendingChanges"];

          v22 = MTLogForCategory(6);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            v23 = *v3;
            v24 = [*v3 syncDataFile];
            *buf = 138543874;
            v30 = v23;
            v31 = 2114;
            v32 = v21;
            v33 = 2114;
            v34 = v24;
            _os_log_impl(&dword_1B1F9F000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@ read pending changes %{public}@ from file %{public}@", buf, 0x20u);
          }

          v25 = v21;
          if (!v21)
          {
            v26 = MTLogForCategory(6);
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              __42__MTPersistentSyncChangeStore_loadChanges__block_invoke_cold_2((a1 + 32), v26);
            }

            v25 = MEMORY[0x1E695E0F0];
          }

          [*(a1 + 40) finishWithResult:v25];
        }

        else
        {
          v16 = MTLogForCategory(6);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v17 = *v3;
            *buf = 138543362;
            v30 = v17;
            _os_log_impl(&dword_1B1F9F000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ stored sync version is too old", buf, 0xCu);
          }

          [*v3 _removeSyncDataFile];
          [*(a1 + 40) finishWithResult:MEMORY[0x1E695E0F0]];
        }

        [v9 finishDecoding];
      }
    }

    else
    {
      [*(a1 + 40) finishWithResult:MEMORY[0x1E695E0F0]];
    }
  }

  else
  {
    v12 = MTLogForCategory(6);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *v3;
      v14 = [*v3 syncDataFile];
      *buf = 138543618;
      v30 = v13;
      v31 = 2114;
      v32 = v14;
      _os_log_impl(&dword_1B1F9F000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ had no pending changes in file %{public}@", buf, 0x16u);
    }

    [*(a1 + 40) finishWithResult:MEMORY[0x1E695E0F0]];
  }

  v27 = *MEMORY[0x1E69E9840];
}

- (void)_removeSyncDataFile
{
  v5 = *MEMORY[0x1E69E9840];
  LODWORD(v4) = 138543618;
  *(&v4 + 4) = a1;
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_2(&dword_1B1F9F000, v1, v2, "%{public}@ failed to remove bogus pending changes with error %{public}@", v4, DWORD2(v4));
  v3 = *MEMORY[0x1E69E9840];
}

void __46__MTPersistentSyncChangeStore_persistChanges___block_invoke_cold_1(id *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [*a1 syncDataPath];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_3_2(&dword_1B1F9F000, v2, v3, "%{public}@ failed to write create directory at %{public}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

void __46__MTPersistentSyncChangeStore_persistChanges___block_invoke_cold_2(id *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [*a1 syncDataFile];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_3_2(&dword_1B1F9F000, v2, v3, "%{public}@ failed to write pending changes to file %{public}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

void __42__MTPersistentSyncChangeStore_loadChanges__block_invoke_cold_1(void *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  LODWORD(v4) = 138543618;
  *(&v4 + 4) = *a1;
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_2(&dword_1B1F9F000, v1, v2, "%{public}@ unarchiving failed with error %{public}@", v4, DWORD2(v4));
  v3 = *MEMORY[0x1E69E9840];
}

void __42__MTPersistentSyncChangeStore_loadChanges__block_invoke_cold_2(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v4 = 138543362;
  v5 = v2;
  _os_log_error_impl(&dword_1B1F9F000, a2, OS_LOG_TYPE_ERROR, "%{public}@ got nil pending changes.", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

void __42__MTPersistentSyncChangeStore_loadChanges__block_invoke_cold_3(void *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  LODWORD(v4) = 138543618;
  *(&v4 + 4) = *a1;
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_2(&dword_1B1F9F000, v1, v2, "%{public}@ caught exception %{public}@ when trying to read pending changes", v4, DWORD2(v4));
  v3 = *MEMORY[0x1E69E9840];
}

@end