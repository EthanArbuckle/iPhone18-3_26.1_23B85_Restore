@interface FCFileCoordinatedDictionary
- (BOOL)readSyncWithAccessor:(id)accessor;
- (BOOL)writeSyncWithAccessor:(id)accessor;
- (FCFileCoordinatedDictionary)init;
- (FCFileCoordinatedDictionary)initWithFileURL:(id)l allowedClasses:(id)classes qualityOfService:(int64_t)service;
- (void)readWithAccessor:(id)accessor;
- (void)writeWithAccessor:(id)accessor completion:(id)completion;
@end

@implementation FCFileCoordinatedDictionary

- (FCFileCoordinatedDictionary)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCFileCoordinatedDictionary init]";
    v10 = 2080;
    v11 = "FCFileCoordinatedDictionary.m";
    v12 = 1024;
    v13 = 29;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCFileCoordinatedDictionary init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCFileCoordinatedDictionary)initWithFileURL:(id)l allowedClasses:(id)classes qualityOfService:(int64_t)service
{
  v35 = *MEMORY[0x1E69E9840];
  lCopy = l;
  classesCopy = classes;
  if (!lCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "fileURL"];
    *buf = 136315906;
    v28 = "[FCFileCoordinatedDictionary initWithFileURL:allowedClasses:qualityOfService:]";
    v29 = 2080;
    v30 = "FCFileCoordinatedDictionary.m";
    v31 = 1024;
    v32 = 36;
    v33 = 2114;
    v34 = v24;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v25.receiver = self;
  v25.super_class = FCFileCoordinatedDictionary;
  v10 = [(FCFileCoordinatedDictionary *)&v25 init];
  if (v10)
  {
    v11 = [lCopy copy];
    fileURL = v10->_fileURL;
    v10->_fileURL = v11;

    v26[0] = objc_opt_class();
    v26[1] = objc_opt_class();
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
    v14 = [classesCopy setByAddingObjectsFromArray:v13];
    allowedClasses = v10->_allowedClasses;
    v10->_allowedClasses = v14;

    v16 = [lCopy copy];
    presentedItemURL = v10->_presentedItemURL;
    v10->_presentedItemURL = v16;

    v18 = objc_opt_new();
    presentedItemOperationQueue = v10->_presentedItemOperationQueue;
    v10->_presentedItemOperationQueue = v18;

    [(NSOperationQueue *)v10->_presentedItemOperationQueue setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v10->_presentedItemOperationQueue setQualityOfService:service];
    v20 = [[FCAsyncSerialQueue alloc] initWithQualityOfService:service];
    asyncAccessQueue = v10->_asyncAccessQueue;
    v10->_asyncAccessQueue = v20;
  }

  v22 = *MEMORY[0x1E69E9840];
  return v10;
}

- (BOOL)readSyncWithAccessor:(id)accessor
{
  accessorCopy = accessor;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__67;
  v18 = __Block_byref_object_dispose__67;
  v19 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v5 = [objc_alloc(MEMORY[0x1E696ABF8]) initWithFilePresenter:self];
  presentedItemURL = [(FCFileCoordinatedDictionary *)self presentedItemURL];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __52__FCFileCoordinatedDictionary_readSyncWithAccessor___block_invoke;
  v9[3] = &unk_1E7C44660;
  v9[4] = self;
  v9[5] = &v14;
  v9[6] = &v10;
  [v5 coordinateReadingItemAtURL:presentedItemURL options:0 error:0 byAccessor:v9];

  if (accessorCopy)
  {
    accessorCopy[2](accessorCopy, v15[5]);
  }

  v7 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v14, 8);

  return v7;
}

void __52__FCFileCoordinatedDictionary_readSyncWithAccessor___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = [v3 allowedClasses];
  v6 = FCReadDictionary(v4, v5);

  v7 = *(a1[5] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  *(*(a1[6] + 8) + 24) = 1;
}

- (BOOL)writeSyncWithAccessor:(id)accessor
{
  accessorCopy = accessor;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v5 = [objc_alloc(MEMORY[0x1E696ABF8]) initWithFilePresenter:self];
  presentedItemURL = [(FCFileCoordinatedDictionary *)self presentedItemURL];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __53__FCFileCoordinatedDictionary_writeSyncWithAccessor___block_invoke;
  v10[3] = &unk_1E7C44688;
  v12 = &v18;
  v10[4] = self;
  v7 = accessorCopy;
  v11 = v7;
  v13 = &v14;
  [v5 coordinateWritingItemAtURL:presentedItemURL options:4 error:0 byAccessor:v10];

  if (v7 && (v15[3] & 1) == 0)
  {
    (*(v7 + 2))(v7, 0);
  }

  v8 = *(v19 + 24);

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);

  return v8;
}

void __53__FCFileCoordinatedDictionary_writeSyncWithAccessor___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 allowedClasses];
  v6 = FCReadWriteDictionaryWithAccessor(v4, v5, v4, 0, *(a1 + 40));

  *(*(*(a1 + 48) + 8) + 24) = v6;
  *(*(*(a1 + 56) + 8) + 24) = 1;
}

- (void)readWithAccessor:(id)accessor
{
  v19 = *MEMORY[0x1E69E9840];
  accessorCopy = accessor;
  if (!accessorCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "accessor"];
    *buf = 136315906;
    v12 = "[FCFileCoordinatedDictionary readWithAccessor:]";
    v13 = 2080;
    v14 = "FCFileCoordinatedDictionary.m";
    v15 = 1024;
    v16 = 102;
    v17 = 2114;
    v18 = v8;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  asyncAccessQueue = [(FCFileCoordinatedDictionary *)self asyncAccessQueue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __48__FCFileCoordinatedDictionary_readWithAccessor___block_invoke;
  v9[3] = &unk_1E7C446B0;
  v9[4] = self;
  v10 = accessorCopy;
  v6 = accessorCopy;
  [asyncAccessQueue enqueueBlock:v9];

  v7 = *MEMORY[0x1E69E9840];
}

void __48__FCFileCoordinatedDictionary_readWithAccessor___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  [v2 readSyncWithAccessor:v3];
  v4[2]();
}

- (void)writeWithAccessor:(id)accessor completion:(id)completion
{
  v24 = *MEMORY[0x1E69E9840];
  accessorCopy = accessor;
  completionCopy = completion;
  if (!accessorCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "accessor"];
    *buf = 136315906;
    v17 = "[FCFileCoordinatedDictionary writeWithAccessor:completion:]";
    v18 = 2080;
    v19 = "FCFileCoordinatedDictionary.m";
    v20 = 1024;
    v21 = 112;
    v22 = 2114;
    v23 = v12;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  asyncAccessQueue = [(FCFileCoordinatedDictionary *)self asyncAccessQueue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __60__FCFileCoordinatedDictionary_writeWithAccessor_completion___block_invoke;
  v13[3] = &unk_1E7C446D8;
  v13[4] = self;
  v14 = accessorCopy;
  v15 = completionCopy;
  v9 = completionCopy;
  v10 = accessorCopy;
  [asyncAccessQueue enqueueBlock:v13];

  v11 = *MEMORY[0x1E69E9840];
}

void __60__FCFileCoordinatedDictionary_writeWithAccessor_completion___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) writeSyncWithAccessor:*(a1 + 40)];
  v4 = *(a1 + 48);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }

  v5[2](v5, v3);
}

@end