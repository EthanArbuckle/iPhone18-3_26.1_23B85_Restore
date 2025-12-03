@interface DMCPropertyListStorage
- (BOOL)_updateDictionaryAtPath:(id)path updateBlock:(id)block error:(id *)error;
- (BOOL)clearAllKeyValueStorageWithError:(id *)error;
- (BOOL)clearKeys:(id)keys error:(id *)error;
- (BOOL)saveKeyValuePairs:(id)pairs error:(id *)error;
- (BOOL)saveValue:(id)value forKey:(id)key error:(id *)error;
- (DMCPropertyListStorage)initWithFilePath:(id)path excludesFromBackup:(BOOL)backup;
- (id)_accessor_removeFileAtPath:(id)path;
- (id)_accessor_valueForKey:(id)key atPath:(id)path;
- (id)retrieveDictionaryWithError:(id *)error;
- (id)retrieveValueForKey:(id)key error:(id *)error;
- (unint64_t)_optionForFileModificationAtPath:(id)path isDeletion:(BOOL)deletion;
- (void)_accessor_updateDictionaryAtReadPath:(id)path writePath:(id)writePath updateBlock:(id)block;
- (void)_ensureDirectoryExistsForFilePath:(id)path;
- (void)_updateDictionaryAtPath:(id)path updateBlock:(id)block completionHandler:(id)handler;
- (void)clearAllKeyValueStorage:(id)storage;
- (void)clearKeys:(id)keys completionHandler:(id)handler;
- (void)retrieveDictionaryWithCompletionHandler:(id)handler;
- (void)retrieveValueForKey:(id)key completionHandler:(id)handler;
- (void)saveKeyValuePairs:(id)pairs completionHandler:(id)handler;
- (void)saveValue:(id)value forKey:(id)key completionHandler:(id)handler;
@end

@implementation DMCPropertyListStorage

- (DMCPropertyListStorage)initWithFilePath:(id)path excludesFromBackup:(BOOL)backup
{
  pathCopy = path;
  v13.receiver = self;
  v13.super_class = DMCPropertyListStorage;
  v8 = [(DMCPropertyListStorage *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_filePath, path);
    v9->_excludesFromBackup = backup;
    v10 = objc_opt_new();
    storageQueue = v9->_storageQueue;
    v9->_storageQueue = v10;

    [(NSOperationQueue *)v9->_storageQueue setMaxConcurrentOperationCount:1];
  }

  return v9;
}

- (void)saveValue:(id)value forKey:(id)key completionHandler:(id)handler
{
  valueCopy = value;
  keyCopy = key;
  handlerCopy = handler;
  filePath = [(DMCPropertyListStorage *)self filePath];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __61__DMCPropertyListStorage_saveValue_forKey_completionHandler___block_invoke;
  v14[3] = &unk_1E7ADCF28;
  v15 = keyCopy;
  v16 = valueCopy;
  v12 = valueCopy;
  v13 = keyCopy;
  [(DMCPropertyListStorage *)self _updateDictionaryAtPath:filePath updateBlock:v14 completionHandler:handlerCopy];
}

- (BOOL)saveValue:(id)value forKey:(id)key error:(id *)error
{
  valueCopy = value;
  keyCopy = key;
  filePath = [(DMCPropertyListStorage *)self filePath];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __49__DMCPropertyListStorage_saveValue_forKey_error___block_invoke;
  v14[3] = &unk_1E7ADCF28;
  v15 = keyCopy;
  v16 = valueCopy;
  v11 = valueCopy;
  v12 = keyCopy;
  LOBYTE(error) = [(DMCPropertyListStorage *)self _updateDictionaryAtPath:filePath updateBlock:v14 error:error];

  return error;
}

- (void)saveKeyValuePairs:(id)pairs completionHandler:(id)handler
{
  pairsCopy = pairs;
  handlerCopy = handler;
  filePath = [(DMCPropertyListStorage *)self filePath];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __62__DMCPropertyListStorage_saveKeyValuePairs_completionHandler___block_invoke;
  v10[3] = &unk_1E7ADCF50;
  v11 = pairsCopy;
  v9 = pairsCopy;
  [(DMCPropertyListStorage *)self _updateDictionaryAtPath:filePath updateBlock:v10 completionHandler:handlerCopy];
}

- (BOOL)saveKeyValuePairs:(id)pairs error:(id *)error
{
  pairsCopy = pairs;
  filePath = [(DMCPropertyListStorage *)self filePath];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __50__DMCPropertyListStorage_saveKeyValuePairs_error___block_invoke;
  v10[3] = &unk_1E7ADCF50;
  v11 = pairsCopy;
  v8 = pairsCopy;
  LOBYTE(error) = [(DMCPropertyListStorage *)self _updateDictionaryAtPath:filePath updateBlock:v10 error:error];

  return error;
}

- (void)retrieveValueForKey:(id)key completionHandler:(id)handler
{
  keyCopy = key;
  handlerCopy = handler;
  filePath = [(DMCPropertyListStorage *)self filePath];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __64__DMCPropertyListStorage_retrieveValueForKey_completionHandler___block_invoke;
  v11[3] = &unk_1E7ADCF78;
  v12 = keyCopy;
  v13 = handlerCopy;
  v11[4] = self;
  v9 = keyCopy;
  v10 = handlerCopy;
  [(DMCPropertyListStorage *)self _performFileActionAtPath:filePath asynchronously:1 hasRead:1 hasWrite:0 isDeletion:0 action:v11];
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

- (id)retrieveValueForKey:(id)key error:(id *)error
{
  keyCopy = key;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  filePath = [(DMCPropertyListStorage *)self filePath];
  v9 = [defaultManager fileExistsAtPath:filePath];

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
    filePath2 = [(DMCPropertyListStorage *)self filePath];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __52__DMCPropertyListStorage_retrieveValueForKey_error___block_invoke;
    v13[3] = &unk_1E7ADCFA0;
    v15 = &v17;
    v16 = &v23;
    v13[4] = self;
    v14 = keyCopy;
    [(DMCPropertyListStorage *)self _performFileActionAtPath:filePath2 asynchronously:0 hasRead:1 hasWrite:0 isDeletion:0 action:v13];

    if (error)
    {
      *error = v18[5];
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

- (void)retrieveDictionaryWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  filePath = [(DMCPropertyListStorage *)self filePath];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__DMCPropertyListStorage_retrieveDictionaryWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7ADCFC8;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [(DMCPropertyListStorage *)self _performFileActionAtPath:filePath asynchronously:1 hasRead:1 hasWrite:0 isDeletion:0 action:v7];
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

- (id)retrieveDictionaryWithError:(id *)error
{
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  filePath = [(DMCPropertyListStorage *)self filePath];
  v7 = [defaultManager fileExistsAtPath:filePath];

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
    filePath2 = [(DMCPropertyListStorage *)self filePath];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __54__DMCPropertyListStorage_retrieveDictionaryWithError___block_invoke;
    v11[3] = &unk_1E7ADCFF0;
    v11[4] = &v12;
    v11[5] = &v18;
    [(DMCPropertyListStorage *)self _performFileActionAtPath:filePath2 asynchronously:0 hasRead:1 hasWrite:0 isDeletion:0 action:v11];

    if (error)
    {
      *error = v13[5];
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

- (void)clearKeys:(id)keys completionHandler:(id)handler
{
  keysCopy = keys;
  handlerCopy = handler;
  filePath = [(DMCPropertyListStorage *)self filePath];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __54__DMCPropertyListStorage_clearKeys_completionHandler___block_invoke;
  v10[3] = &unk_1E7ADCF50;
  v11 = keysCopy;
  v9 = keysCopy;
  [(DMCPropertyListStorage *)self _updateDictionaryAtPath:filePath updateBlock:v10 completionHandler:handlerCopy];
}

- (BOOL)clearKeys:(id)keys error:(id *)error
{
  keysCopy = keys;
  filePath = [(DMCPropertyListStorage *)self filePath];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __42__DMCPropertyListStorage_clearKeys_error___block_invoke;
  v10[3] = &unk_1E7ADCF50;
  v11 = keysCopy;
  v8 = keysCopy;
  LOBYTE(error) = [(DMCPropertyListStorage *)self _updateDictionaryAtPath:filePath updateBlock:v10 error:error];

  return error;
}

- (void)clearAllKeyValueStorage:(id)storage
{
  storageCopy = storage;
  filePath = [(DMCPropertyListStorage *)self filePath];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__DMCPropertyListStorage_clearAllKeyValueStorage___block_invoke;
  v7[3] = &unk_1E7ADD018;
  v7[4] = self;
  v8 = storageCopy;
  v6 = storageCopy;
  [(DMCPropertyListStorage *)self _performFileActionAtPath:filePath asynchronously:1 hasRead:0 hasWrite:1 isDeletion:1 action:v7];
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

- (BOOL)clearAllKeyValueStorageWithError:(id *)error
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__6;
  v13 = __Block_byref_object_dispose__6;
  v14 = 0;
  filePath = [(DMCPropertyListStorage *)self filePath];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __59__DMCPropertyListStorage_clearAllKeyValueStorageWithError___block_invoke;
  v8[3] = &unk_1E7ADD040;
  v8[4] = self;
  v8[5] = &v9;
  [(DMCPropertyListStorage *)self _performFileActionAtPath:filePath asynchronously:0 hasRead:0 hasWrite:1 isDeletion:1 action:v8];

  if (error)
  {
    *error = v10[5];
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

- (unint64_t)_optionForFileModificationAtPath:(id)path isDeletion:(BOOL)deletion
{
  if (deletion)
  {
    return 1;
  }

  v5 = MEMORY[0x1E696AC08];
  pathCopy = path;
  defaultManager = [v5 defaultManager];
  LODWORD(v5) = [defaultManager fileExistsAtPath:pathCopy];

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

- (void)_ensureDirectoryExistsForFilePath:(id)path
{
  v13 = *MEMORY[0x1E69E9840];
  stringByDeletingLastPathComponent = [path stringByDeletingLastPathComponent];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v5 = [defaultManager fileExistsAtPath:stringByDeletingLastPathComponent];

  if ((v5 & 1) == 0)
  {
    defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
    v10 = 0;
    [defaultManager2 createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v10];
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

- (void)_updateDictionaryAtPath:(id)path updateBlock:(id)block completionHandler:(id)handler
{
  blockCopy = block;
  handlerCopy = handler;
  pathCopy = path;
  [(DMCPropertyListStorage *)self _ensureDirectoryExistsForFilePath:pathCopy];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __80__DMCPropertyListStorage__updateDictionaryAtPath_updateBlock_completionHandler___block_invoke;
  v13[3] = &unk_1E7ADD0E0;
  v13[4] = self;
  v14 = handlerCopy;
  v15 = blockCopy;
  v11 = blockCopy;
  v12 = handlerCopy;
  [(DMCPropertyListStorage *)self _performFileActionAtPath:pathCopy asynchronously:1 hasRead:1 hasWrite:1 isDeletion:0 action:v13];
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

- (BOOL)_updateDictionaryAtPath:(id)path updateBlock:(id)block error:(id *)error
{
  pathCopy = path;
  blockCopy = block;
  [(DMCPropertyListStorage *)self _ensureDirectoryExistsForFilePath:pathCopy];
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
  v10 = blockCopy;
  v14 = v10;
  [(DMCPropertyListStorage *)self _performFileActionAtPath:pathCopy asynchronously:0 hasRead:1 hasWrite:1 isDeletion:0 action:v13];
  if (error)
  {
    *error = v17[5];
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

- (id)_accessor_valueForKey:(id)key atPath:(id)path
{
  v5 = MEMORY[0x1E695DF20];
  keyCopy = key;
  v7 = [v5 DMCDictionaryFromFile:path];
  v8 = [v7 objectForKeyedSubscript:keyCopy];

  return v8;
}

- (void)_accessor_updateDictionaryAtReadPath:(id)path writePath:(id)writePath updateBlock:(id)block
{
  pathCopy = path;
  writePathCopy = writePath;
  v9 = MEMORY[0x1E696AC08];
  blockCopy = block;
  defaultManager = [v9 defaultManager];
  v12 = [defaultManager fileExistsAtPath:pathCopy];

  if (v12)
  {
    v13 = [MEMORY[0x1E695DF20] DMCDictionaryFromFile:pathCopy];
    v14 = [v13 mutableCopy];
    v15 = v14;
    if (v14)
    {
      dictionary = v14;
    }

    else
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
    }

    dictionary2 = dictionary;
  }

  else
  {
    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  }

  blockCopy[2](blockCopy, dictionary2);

  if ([dictionary2 count])
  {
    [dictionary2 DMCWriteToBinaryFile:writePathCopy];
    if ([(DMCPropertyListStorage *)self excludesFromBackup])
    {
      DMCSetSkipBackupAttributeToItemAtPath(writePathCopy, 1);
    }
  }

  else
  {
    v18 = [(DMCPropertyListStorage *)self _accessor_removeFileAtPath:writePathCopy];
  }
}

- (id)_accessor_removeFileAtPath:(id)path
{
  pathCopy = path;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v5 = [defaultManager fileExistsAtPath:pathCopy];

  if (v5)
  {
    defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
    v9 = 0;
    [defaultManager2 removeItemAtPath:pathCopy error:&v9];
    v7 = v9;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end