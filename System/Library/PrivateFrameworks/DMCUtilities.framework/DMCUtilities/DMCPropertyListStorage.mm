@interface DMCPropertyListStorage
- (BOOL)_updateDictionaryAtPath:(id)a3 updateBlock:(id)a4 error:(id *)a5;
- (BOOL)clearAllKeyValueStorageWithError:(id *)a3;
- (BOOL)clearKeys:(id)a3 error:(id *)a4;
- (BOOL)saveKeyValuePairs:(id)a3 error:(id *)a4;
- (BOOL)saveValue:(id)a3 forKey:(id)a4 error:(id *)a5;
- (DMCPropertyListStorage)initWithFilePath:(id)a3 excludesFromBackup:(BOOL)a4;
- (id)_accessor_removeFileAtPath:(id)a3;
- (id)_accessor_valueForKey:(id)a3 atPath:(id)a4;
- (id)retrieveDictionaryWithError:(id *)a3;
- (id)retrieveValueForKey:(id)a3 error:(id *)a4;
- (unint64_t)_optionForFileModificationAtPath:(id)a3 isDeletion:(BOOL)a4;
- (void)_accessor_updateDictionaryAtReadPath:(id)a3 writePath:(id)a4 updateBlock:(id)a5;
- (void)_ensureDirectoryExistsForFilePath:(id)a3;
- (void)_updateDictionaryAtPath:(id)a3 updateBlock:(id)a4 completionHandler:(id)a5;
- (void)clearAllKeyValueStorage:(id)a3;
- (void)clearKeys:(id)a3 completionHandler:(id)a4;
- (void)retrieveDictionaryWithCompletionHandler:(id)a3;
- (void)retrieveValueForKey:(id)a3 completionHandler:(id)a4;
- (void)saveKeyValuePairs:(id)a3 completionHandler:(id)a4;
- (void)saveValue:(id)a3 forKey:(id)a4 completionHandler:(id)a5;
@end

@implementation DMCPropertyListStorage

- (DMCPropertyListStorage)initWithFilePath:(id)a3 excludesFromBackup:(BOOL)a4
{
  v7 = a3;
  v13.receiver = self;
  v13.super_class = DMCPropertyListStorage;
  v8 = [(DMCPropertyListStorage *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_filePath, a3);
    v9->_excludesFromBackup = a4;
    v10 = objc_opt_new();
    storageQueue = v9->_storageQueue;
    v9->_storageQueue = v10;

    [(NSOperationQueue *)v9->_storageQueue setMaxConcurrentOperationCount:1];
  }

  return v9;
}

- (void)saveValue:(id)a3 forKey:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(DMCPropertyListStorage *)self filePath];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __61__DMCPropertyListStorage_saveValue_forKey_completionHandler___block_invoke;
  v14[3] = &unk_1E7ADCF28;
  v15 = v9;
  v16 = v8;
  v12 = v8;
  v13 = v9;
  [(DMCPropertyListStorage *)self _updateDictionaryAtPath:v11 updateBlock:v14 completionHandler:v10];
}

- (BOOL)saveValue:(id)a3 forKey:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(DMCPropertyListStorage *)self filePath];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __49__DMCPropertyListStorage_saveValue_forKey_error___block_invoke;
  v14[3] = &unk_1E7ADCF28;
  v15 = v9;
  v16 = v8;
  v11 = v8;
  v12 = v9;
  LOBYTE(a5) = [(DMCPropertyListStorage *)self _updateDictionaryAtPath:v10 updateBlock:v14 error:a5];

  return a5;
}

- (void)saveKeyValuePairs:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(DMCPropertyListStorage *)self filePath];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __62__DMCPropertyListStorage_saveKeyValuePairs_completionHandler___block_invoke;
  v10[3] = &unk_1E7ADCF50;
  v11 = v6;
  v9 = v6;
  [(DMCPropertyListStorage *)self _updateDictionaryAtPath:v8 updateBlock:v10 completionHandler:v7];
}

- (BOOL)saveKeyValuePairs:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(DMCPropertyListStorage *)self filePath];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __50__DMCPropertyListStorage_saveKeyValuePairs_error___block_invoke;
  v10[3] = &unk_1E7ADCF50;
  v11 = v6;
  v8 = v6;
  LOBYTE(a4) = [(DMCPropertyListStorage *)self _updateDictionaryAtPath:v7 updateBlock:v10 error:a4];

  return a4;
}

- (void)retrieveValueForKey:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(DMCPropertyListStorage *)self filePath];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __64__DMCPropertyListStorage_retrieveValueForKey_completionHandler___block_invoke;
  v11[3] = &unk_1E7ADCF78;
  v12 = v6;
  v13 = v7;
  v11[4] = self;
  v9 = v6;
  v10 = v7;
  [(DMCPropertyListStorage *)self _performFileActionAtPath:v8 asynchronously:1 hasRead:1 hasWrite:0 isDeletion:0 action:v11];
}

void __64__DMCPropertyListStorage_retrieveValueForKey_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v5 = *(a1 + 48);
    v6 = *(*(a1 + 48) + 16);

    v6();
  }

  else
  {
    v7 = [*(a1 + 32) _accessor_valueForKey:*(a1 + 40) atPath:a2];
    (*(*(a1 + 48) + 16))();
  }
}

- (id)retrieveValueForKey:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [MEMORY[0x1E696AC08] defaultManager];
  v8 = [(DMCPropertyListStorage *)self filePath];
  v9 = [v7 fileExistsAtPath:v8];

  if (v9)
  {
    v23 = 0;
    v24 = &v23;
    v25 = 0x3032000000;
    v26 = __Block_byref_object_copy__6;
    v27 = __Block_byref_object_dispose__6;
    v28 = 0;
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__6;
    v21 = __Block_byref_object_dispose__6;
    v22 = 0;
    v10 = [(DMCPropertyListStorage *)self filePath];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __52__DMCPropertyListStorage_retrieveValueForKey_error___block_invoke;
    v13[3] = &unk_1E7ADCFA0;
    v15 = &v17;
    v16 = &v23;
    v13[4] = self;
    v14 = v6;
    [(DMCPropertyListStorage *)self _performFileActionAtPath:v10 asynchronously:0 hasRead:1 hasWrite:0 isDeletion:0 action:v13];

    if (a4)
    {
      *a4 = v18[5];
    }

    v11 = v24[5];

    _Block_object_dispose(&v17, 8);
    _Block_object_dispose(&v23, 8);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void __52__DMCPropertyListStorage_retrieveValueForKey_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v12 = v6;
  if (v6)
  {
    v7 = *(*(a1 + 48) + 8);
    v8 = v6;
    v9 = *(v7 + 40);
    *(v7 + 40) = v8;
  }

  else
  {
    v10 = [*(a1 + 32) _accessor_valueForKey:*(a1 + 40) atPath:a2];
    v11 = *(*(a1 + 56) + 8);
    v9 = *(v11 + 40);
    *(v11 + 40) = v10;
  }
}

- (void)retrieveDictionaryWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(DMCPropertyListStorage *)self filePath];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__DMCPropertyListStorage_retrieveDictionaryWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7ADCFC8;
  v8 = v4;
  v6 = v4;
  [(DMCPropertyListStorage *)self _performFileActionAtPath:v5 asynchronously:1 hasRead:1 hasWrite:0 isDeletion:0 action:v7];
}

void __66__DMCPropertyListStorage_retrieveDictionaryWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v5 = *(a1 + 32);
    v6 = *(*(a1 + 32) + 16);

    v6();
  }

  else
  {
    v7 = [MEMORY[0x1E695DF20] DMCDictionaryFromFile:a2];
    (*(*(a1 + 32) + 16))();
  }
}

- (id)retrieveDictionaryWithError:(id *)a3
{
  v5 = [MEMORY[0x1E696AC08] defaultManager];
  v6 = [(DMCPropertyListStorage *)self filePath];
  v7 = [v5 fileExistsAtPath:v6];

  if (v7)
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__6;
    v22 = __Block_byref_object_dispose__6;
    v23 = 0;
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__6;
    v16 = __Block_byref_object_dispose__6;
    v17 = 0;
    v8 = [(DMCPropertyListStorage *)self filePath];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __54__DMCPropertyListStorage_retrieveDictionaryWithError___block_invoke;
    v11[3] = &unk_1E7ADCFF0;
    v11[4] = &v12;
    v11[5] = &v18;
    [(DMCPropertyListStorage *)self _performFileActionAtPath:v8 asynchronously:0 hasRead:1 hasWrite:0 isDeletion:0 action:v11];

    if (a3)
    {
      *a3 = v13[5];
    }

    v9 = v19[5];
    _Block_object_dispose(&v12, 8);

    _Block_object_dispose(&v18, 8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __54__DMCPropertyListStorage_retrieveDictionaryWithError___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v12 = v6;
  if (v6)
  {
    v7 = *(*(a1 + 32) + 8);
    v8 = v6;
    v9 = *(v7 + 40);
    *(v7 + 40) = v8;
  }

  else
  {
    v10 = [MEMORY[0x1E695DF20] DMCDictionaryFromFile:a2];
    v11 = *(*(a1 + 40) + 8);
    v9 = *(v11 + 40);
    *(v11 + 40) = v10;
  }
}

- (void)clearKeys:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(DMCPropertyListStorage *)self filePath];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __54__DMCPropertyListStorage_clearKeys_completionHandler___block_invoke;
  v10[3] = &unk_1E7ADCF50;
  v11 = v6;
  v9 = v6;
  [(DMCPropertyListStorage *)self _updateDictionaryAtPath:v8 updateBlock:v10 completionHandler:v7];
}

- (BOOL)clearKeys:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(DMCPropertyListStorage *)self filePath];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __42__DMCPropertyListStorage_clearKeys_error___block_invoke;
  v10[3] = &unk_1E7ADCF50;
  v11 = v6;
  v8 = v6;
  LOBYTE(a4) = [(DMCPropertyListStorage *)self _updateDictionaryAtPath:v7 updateBlock:v10 error:a4];

  return a4;
}

- (void)clearAllKeyValueStorage:(id)a3
{
  v4 = a3;
  v5 = [(DMCPropertyListStorage *)self filePath];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__DMCPropertyListStorage_clearAllKeyValueStorage___block_invoke;
  v7[3] = &unk_1E7ADD018;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(DMCPropertyListStorage *)self _performFileActionAtPath:v5 asynchronously:1 hasRead:0 hasWrite:1 isDeletion:1 action:v7];
}

void __50__DMCPropertyListStorage_clearAllKeyValueStorage___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v5 = *(a1 + 40);
    v6 = *(*(a1 + 40) + 16);

    v6();
  }

  else
  {
    v7 = [*(a1 + 32) _accessor_removeFileAtPath:?];
    (*(*(a1 + 40) + 16))(*(a1 + 40), v7 == 0);
  }
}

- (BOOL)clearAllKeyValueStorageWithError:(id *)a3
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__6;
  v13 = __Block_byref_object_dispose__6;
  v14 = 0;
  v5 = [(DMCPropertyListStorage *)self filePath];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __59__DMCPropertyListStorage_clearAllKeyValueStorageWithError___block_invoke;
  v8[3] = &unk_1E7ADD040;
  v8[4] = self;
  v8[5] = &v9;
  [(DMCPropertyListStorage *)self _performFileActionAtPath:v5 asynchronously:0 hasRead:0 hasWrite:1 isDeletion:1 action:v8];

  if (a3)
  {
    *a3 = v10[5];
  }

  v6 = v10[5] == 0;
  _Block_object_dispose(&v9, 8);

  return v6;
}

void __59__DMCPropertyListStorage_clearAllKeyValueStorageWithError___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v12 = v6;
  if (v6)
  {
    v7 = *(*(a1 + 40) + 8);
    v8 = v6;
    v9 = *(v7 + 40);
    *(v7 + 40) = v8;
  }

  else
  {
    v10 = [*(a1 + 32) _accessor_removeFileAtPath:a3];
    v11 = *(*(a1 + 40) + 8);
    v9 = *(v11 + 40);
    *(v11 + 40) = v10;
  }
}

- (unint64_t)_optionForFileModificationAtPath:(id)a3 isDeletion:(BOOL)a4
{
  if (a4)
  {
    return 1;
  }

  v5 = MEMORY[0x1E696AC08];
  v6 = a3;
  v7 = [v5 defaultManager];
  LODWORD(v5) = [v7 fileExistsAtPath:v6];

  if (v5)
  {
    v4 = 0;
  }

  else
  {
    v4 = 8;
  }

  return v4;
}

- (void)_ensureDirectoryExistsForFilePath:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = [a3 stringByDeletingLastPathComponent];
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v5 = [v4 fileExistsAtPath:v3];

  if ((v5 & 1) == 0)
  {
    v6 = [MEMORY[0x1E696AC08] defaultManager];
    v10 = 0;
    [v6 createDirectoryAtPath:v3 withIntermediateDirectories:1 attributes:0 error:&v10];
    v7 = v10;

    if (v7)
    {
      v8 = *DMCLogObjects();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v12 = v7;
        _os_log_impl(&dword_1B1630000, v8, OS_LOG_TYPE_ERROR, "DMCPropertyListStorage: Failed to create file directory with error: %{public}@", buf, 0xCu);
      }
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __101__DMCPropertyListStorage__performFileActionAtPath_asynchronously_hasRead_hasWrite_isDeletion_action___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = *DMCLogObjects();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v9 = 138543618;
      v10 = v5;
      v11 = 2114;
      v12 = v3;
      _os_log_impl(&dword_1B1630000, v4, OS_LOG_TYPE_ERROR, "DMCPropertyListStorage: Failed to access file at (%{public}@) with error: %{public}@", &v9, 0x16u);
    }

    v6 = *(*(a1 + 40) + 16);
  }

  else
  {
    v7 = *(a1 + 32);
    v6 = *(*(a1 + 40) + 16);
  }

  v6();

  v8 = *MEMORY[0x1E69E9840];
}

void __101__DMCPropertyListStorage__performFileActionAtPath_asynchronously_hasRead_hasWrite_isDeletion_action___block_invoke_9(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v7 = [a2 path];
  v6 = [v5 path];

  (*(v4 + 16))(v4, v7, v6, 0);
}

void __101__DMCPropertyListStorage__performFileActionAtPath_asynchronously_hasRead_hasWrite_isDeletion_action___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 path];
  (*(v2 + 16))(v2, v3, 0, 0);
}

void __101__DMCPropertyListStorage__performFileActionAtPath_asynchronously_hasRead_hasWrite_isDeletion_action___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 path];
  (*(v2 + 16))(v2, 0, v3, 0);
}

- (void)_updateDictionaryAtPath:(id)a3 updateBlock:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  [(DMCPropertyListStorage *)self _ensureDirectoryExistsForFilePath:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __80__DMCPropertyListStorage__updateDictionaryAtPath_updateBlock_completionHandler___block_invoke;
  v13[3] = &unk_1E7ADD0E0;
  v13[4] = self;
  v14 = v9;
  v15 = v8;
  v11 = v8;
  v12 = v9;
  [(DMCPropertyListStorage *)self _performFileActionAtPath:v10 asynchronously:1 hasRead:1 hasWrite:1 isDeletion:0 action:v13];
}

uint64_t __80__DMCPropertyListStorage__updateDictionaryAtPath_updateBlock_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v5 = *(a1 + 40);
    v6 = *(*(a1 + 40) + 16);

    return v6();
  }

  else
  {
    [*(a1 + 32) _accessor_updateDictionaryAtReadPath:a2 writePath:a3 updateBlock:*(a1 + 48)];
    v8 = *(*(a1 + 40) + 16);

    return v8();
  }
}

- (BOOL)_updateDictionaryAtPath:(id)a3 updateBlock:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  [(DMCPropertyListStorage *)self _ensureDirectoryExistsForFilePath:v8];
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__6;
  v20 = __Block_byref_object_dispose__6;
  v21 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __68__DMCPropertyListStorage__updateDictionaryAtPath_updateBlock_error___block_invoke;
  v13[3] = &unk_1E7ADD108;
  v15 = &v16;
  v13[4] = self;
  v10 = v9;
  v14 = v10;
  [(DMCPropertyListStorage *)self _performFileActionAtPath:v8 asynchronously:0 hasRead:1 hasWrite:1 isDeletion:0 action:v13];
  if (a5)
  {
    *a5 = v17[5];
  }

  v11 = v17[5] == 0;

  _Block_object_dispose(&v16, 8);
  return v11;
}

void __68__DMCPropertyListStorage__updateDictionaryAtPath_updateBlock_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = a4;
  if (v8)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a4);
  }

  else
  {
    [*(a1 + 32) _accessor_updateDictionaryAtReadPath:a2 writePath:a3 updateBlock:*(a1 + 40)];
  }
}

- (id)_accessor_valueForKey:(id)a3 atPath:(id)a4
{
  v5 = MEMORY[0x1E695DF20];
  v6 = a3;
  v7 = [v5 DMCDictionaryFromFile:a4];
  v8 = [v7 objectForKeyedSubscript:v6];

  return v8;
}

- (void)_accessor_updateDictionaryAtReadPath:(id)a3 writePath:(id)a4 updateBlock:(id)a5
{
  v19 = a3;
  v8 = a4;
  v9 = MEMORY[0x1E696AC08];
  v10 = a5;
  v11 = [v9 defaultManager];
  v12 = [v11 fileExistsAtPath:v19];

  if (v12)
  {
    v13 = [MEMORY[0x1E695DF20] DMCDictionaryFromFile:v19];
    v14 = [v13 mutableCopy];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = [MEMORY[0x1E695DF90] dictionary];
    }

    v17 = v16;
  }

  else
  {
    v17 = [MEMORY[0x1E695DF90] dictionary];
  }

  v10[2](v10, v17);

  if ([v17 count])
  {
    [v17 DMCWriteToBinaryFile:v8];
    if ([(DMCPropertyListStorage *)self excludesFromBackup])
    {
      DMCSetSkipBackupAttributeToItemAtPath(v8, 1);
    }
  }

  else
  {
    v18 = [(DMCPropertyListStorage *)self _accessor_removeFileAtPath:v8];
  }
}

- (id)_accessor_removeFileAtPath:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v5 = [v4 fileExistsAtPath:v3];

  if (v5)
  {
    v6 = [MEMORY[0x1E696AC08] defaultManager];
    v9 = 0;
    [v6 removeItemAtPath:v3 error:&v9];
    v7 = v9;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end