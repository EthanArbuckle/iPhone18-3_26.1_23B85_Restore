@interface FCAssetStore
- (FCAssetStore)initWithDirectoryAtPath:(id)path preferredAssetPathExtension:(id)extension knownKeys:(id)keys;
- (id)_filePathForKey:(uint64_t)key;
- (id)allKeys;
- (id)copyData:(id)data withKey:(id)key;
- (id)copyFileAtPath:(id)path withKey:(id)key error:(id *)error;
- (id)filePathForKey:(id)key;
- (id)fileURLForKey:(id)key;
- (id)moveFileAtPath:(id)path withKey:(id)key error:(id *)error;
- (id)moveFileAtURL:(id)l withKey:(id)key;
- (off_t)_sizeOfFileAtPath:(off_t)result;
- (unint64_t)sizeOfFileForKey:(id)key;
- (unint64_t)storeSize;
- (unint64_t)storeSizeForKeys:(id)keys;
- (void)removeAllFiles;
- (void)removeAllFilesExceptKeys:(id)keys;
- (void)removeFileWithKey:(id)key;
@end

@implementation FCAssetStore

- (id)allKeys
{
  if (self)
  {
    self = self->_knownKeys;
  }

  return [(FCAssetStore *)self allObjects];
}

- (FCAssetStore)initWithDirectoryAtPath:(id)path preferredAssetPathExtension:(id)extension knownKeys:(id)keys
{
  v59 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  extensionCopy = extension;
  keysCopy = keys;
  v55.receiver = self;
  v55.super_class = FCAssetStore;
  v11 = [(FCAssetStore *)&v55 init];
  if (v11)
  {
    v12 = [pathCopy copy];
    directoryPath = v11->_directoryPath;
    v11->_directoryPath = v12;

    v14 = [extensionCopy copy];
    preferredExtension = v11->_preferredExtension;
    v11->_preferredExtension = v14;

    v16 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    knownKeys = v11->_knownKeys;
    v11->_knownKeys = v16;

    v18 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v19 = dispatch_queue_attr_make_with_qos_class(v18, QOS_CLASS_BACKGROUND, 0);
    v20 = dispatch_queue_create("com.apple.assetstore.removal", v19);
    removalQueue = v11->_removalQueue;
    v11->_removalQueue = v20;

    v22 = objc_alloc_init(FCThreadSafeMutableSet);
    keysAwaitingRemoval = v11->_keysAwaitingRemoval;
    v11->_keysAwaitingRemoval = v22;

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v54 = 0;
    LOBYTE(v19) = [defaultManager createDirectoryAtPath:pathCopy withIntermediateDirectories:0 attributes:0 error:&v54];
    v25 = v54;

    if ((v19 & 1) == 0 && [v25 code] != 516)
    {
      v26 = FCDefaultLog;
      if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v58 = v25;
        _os_log_error_impl(&dword_1B63EF000, v26, OS_LOG_TYPE_ERROR, "error creating asset store directory: %{public}@", buf, 0xCu);
      }
    }

    v45 = v25;
    v47 = keysCopy;
    v48 = extensionCopy;
    if (keysCopy)
    {
      v27 = [MEMORY[0x1E695DFD8] setWithArray:{keysCopy, v25}];
    }

    else
    {
      v27 = 0;
    }

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
    v29 = [defaultManager2 subpathsOfDirectoryAtPath:pathCopy error:0];

    obj = v29;
    v30 = [v29 countByEnumeratingWithState:&v50 objects:v56 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v51;
      do
      {
        for (i = 0; i != v31; ++i)
        {
          if (*v51 != v32)
          {
            objc_enumerationMutation(obj);
          }

          v34 = *(*(&v50 + 1) + 8 * i);
          v35 = objc_autoreleasePoolPush();
          v36 = v34;
          if ([(NSString *)v11->_preferredExtension length])
          {
            stringByDeletingPathExtension = [v36 stringByDeletingPathExtension];
          }

          else
          {
            stringByDeletingPathExtension = v36;
          }

          v38 = stringByDeletingPathExtension;

          v39 = [pathCopy stringByAppendingPathComponent:v36];
          if (!v27)
          {
            goto LABEL_20;
          }

          v40 = [v27 member:v38];
          if (v40)
          {
            v41 = v40;

            v38 = v41;
LABEL_20:
            [(NSMutableSet *)v11->_knownKeys addObject:v38];
            goto LABEL_22;
          }

          defaultManager3 = [MEMORY[0x1E696AC08] defaultManager];
          [defaultManager3 removeItemAtPath:v39 error:0];

LABEL_22:
          objc_autoreleasePoolPop(v35);
        }

        v31 = [obj countByEnumeratingWithState:&v50 objects:v56 count:16];
      }

      while (v31);
    }

    keysCopy = v47;
    extensionCopy = v48;
  }

  v43 = *MEMORY[0x1E69E9840];
  return v11;
}

- (id)copyFileAtPath:(id)path withKey:(id)key error:(id *)error
{
  v30 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  keyCopy = key;
  v10 = [(FCAssetStore *)self _filePathForKey:keyCopy];
  v11 = [MEMORY[0x1E695DFF8] fileURLWithPath:v10 isDirectory:0];
  if (self)
  {
    keysAwaitingRemoval = self->_keysAwaitingRemoval;
  }

  else
  {
    keysAwaitingRemoval = 0;
  }

  [(FCThreadSafeMutableSet *)keysAwaitingRemoval removeObject:keyCopy, error];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v14 = [MEMORY[0x1E695DFF8] fileURLWithPath:pathCopy isDirectory:0];
  v27 = 0;
  v15 = [defaultManager copyItemAtURL:v14 toURL:v11 error:&v27];
  v16 = v27;

  if (v15)
  {
    if (self)
    {
      knownKeys = self->_knownKeys;
    }

    else
    {
      knownKeys = 0;
    }

    [(NSMutableSet *)knownKeys addObject:keyCopy];
    goto LABEL_7;
  }

  domain = [v16 domain];
  if ([domain isEqualToString:*MEMORY[0x1E696A250]])
  {
    code = [v16 code];

    if (code == 516)
    {
      defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
      [defaultManager2 removeItemAtURL:v11 error:0];

LABEL_7:
      v18 = v10;
      goto LABEL_17;
    }
  }

  else
  {
  }

  v22 = FCDefaultLog;
  if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v29 = v16;
    _os_log_error_impl(&dword_1B63EF000, v22, OS_LOG_TYPE_ERROR, "error copying file into asset store: %{public}@", buf, 0xCu);
  }

  if (v26)
  {
    v23 = v16;
    v18 = 0;
    *v26 = v16;
  }

  else
  {
    v18 = 0;
  }

LABEL_17:

  v24 = *MEMORY[0x1E69E9840];
  return v18;
}

- (id)_filePathForKey:(uint64_t)key
{
  v18 = *MEMORY[0x1E69E9840];
  if (key)
  {
    v3 = [*(key + 8) stringByAppendingPathComponent:a2];
    if ([*(key + 16) length])
    {
      stringByDeletingPathExtension = [v3 stringByDeletingPathExtension];
      v5 = [stringByDeletingPathExtension isEqualToString:v3];

      if ((v5 & 1) == 0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"asset store keys should not have an extension"];
        v10 = 136315906;
        v11 = "[FCAssetStore _filePathForKey:]";
        v12 = 2080;
        v13 = "FCAssetStore.m";
        v14 = 1024;
        v15 = 292;
        v16 = 2114;
        v17 = v9;
        _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v10, 0x26u);
      }

      v6 = [v3 stringByAppendingPathExtension:*(key + 16)];

      v3 = v6;
    }
  }

  else
  {
    v3 = 0;
  }

  v7 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)moveFileAtPath:(id)path withKey:(id)key error:(id *)error
{
  v30 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  keyCopy = key;
  v10 = [(FCAssetStore *)self _filePathForKey:keyCopy];
  v11 = [MEMORY[0x1E695DFF8] fileURLWithPath:v10 isDirectory:0];
  if (self)
  {
    keysAwaitingRemoval = self->_keysAwaitingRemoval;
  }

  else
  {
    keysAwaitingRemoval = 0;
  }

  [(FCThreadSafeMutableSet *)keysAwaitingRemoval removeObject:keyCopy, error];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v14 = [MEMORY[0x1E695DFF8] fileURLWithPath:pathCopy isDirectory:0];
  v27 = 0;
  v15 = [defaultManager moveItemAtURL:v14 toURL:v11 error:&v27];
  v16 = v27;

  if (v15)
  {
    if (self)
    {
      knownKeys = self->_knownKeys;
    }

    else
    {
      knownKeys = 0;
    }

    [(NSMutableSet *)knownKeys addObject:keyCopy];
    goto LABEL_16;
  }

  domain = [v16 domain];
  if ([domain isEqualToString:*MEMORY[0x1E696A250]])
  {
    code = [v16 code];

    if (code == 516)
    {
      defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
      [defaultManager2 removeItemAtURL:v11 error:0];

      v21 = [(FCAssetStore *)self moveFileAtPath:pathCopy withKey:keyCopy error:v26];
      goto LABEL_16;
    }
  }

  else
  {
  }

  v22 = FCDefaultLog;
  if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v29 = v16;
    _os_log_error_impl(&dword_1B63EF000, v22, OS_LOG_TYPE_ERROR, "error moving file into asset store: %{public}@", buf, 0xCu);
  }

  if (v26)
  {
    v23 = v16;
    *v26 = v16;
  }

  v10 = 0;
LABEL_16:

  v24 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)moveFileAtURL:(id)l withKey:(id)key
{
  keyCopy = key;
  path = [l path];
  v8 = [(FCAssetStore *)self moveFileAtPath:path withKey:keyCopy error:0];

  if (v8)
  {
    v9 = [MEMORY[0x1E695DFF8] fileURLWithPath:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)copyData:(id)data withKey:(id)key
{
  v19 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  dataCopy = data;
  v8 = [(FCAssetStore *)self _filePathForKey:keyCopy];
  if (self)
  {
    keysAwaitingRemoval = self->_keysAwaitingRemoval;
  }

  else
  {
    keysAwaitingRemoval = 0;
  }

  [(FCThreadSafeMutableSet *)keysAwaitingRemoval removeObject:keyCopy];
  v16 = 0;
  v10 = [dataCopy writeToFile:v8 options:1 error:&v16];

  v11 = v16;
  if (v10)
  {
    if (self)
    {
      knownKeys = self->_knownKeys;
    }

    else
    {
      knownKeys = 0;
    }

    [(NSMutableSet *)knownKeys addObject:keyCopy];
  }

  else
  {
    v13 = FCDefaultLog;
    if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v18 = v11;
      _os_log_error_impl(&dword_1B63EF000, v13, OS_LOG_TYPE_ERROR, "error copying data into asset store: %{public}@", buf, 0xCu);
    }

    v8 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v8;
}

- (void)removeFileWithKey:(id)key
{
  keyCopy = key;
  if (self)
  {
    [(NSMutableSet *)self->_knownKeys removeObject:keyCopy];
    [(FCThreadSafeMutableSet *)self->_keysAwaitingRemoval addObject:keyCopy];
    removalQueue = self->_removalQueue;
  }

  else
  {
    [0 removeObject:keyCopy];
    [0 addObject:keyCopy];
    removalQueue = 0;
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __34__FCAssetStore_removeFileWithKey___block_invoke;
  v7[3] = &unk_1E7C36C58;
  v7[4] = self;
  v8 = keyCopy;
  v6 = keyCopy;
  dispatch_async(removalQueue, v7);
}

void __34__FCAssetStore_removeFileWithKey___block_invoke(uint64_t a1)
{
  v2 = [(FCAssetStore *)*(a1 + 32) _filePathForKey:?];
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *(v3 + 40);
  }

  else
  {
    v4 = 0;
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __34__FCAssetStore_removeFileWithKey___block_invoke_2;
  v6[3] = &unk_1E7C37CD8;
  v7 = *(a1 + 40);
  v8 = v2;
  v5 = v2;
  [v4 readWriteWithAccessor:v6];
}

void __34__FCAssetStore_removeFileWithKey___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 containsObject:*(a1 + 32)])
  {
    v4 = [MEMORY[0x1E696AC08] defaultManager];
    v5 = *(a1 + 40);
    v10 = 0;
    v6 = [v4 removeItemAtPath:v5 error:&v10];
    v7 = v10;

    if ((v6 & 1) == 0)
    {
      v8 = FCDefaultLog;
      if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v12 = v7;
        _os_log_error_impl(&dword_1B63EF000, v8, OS_LOG_TYPE_ERROR, "error deleting file from asset store: %{public}@", buf, 0xCu);
      }
    }

    [v3 removeObject:*(a1 + 32)];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)removeAllFilesExceptKeys:(id)keys
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E695DFD8] setWithArray:keys];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  if (self)
  {
    knownKeys = self->_knownKeys;
  }

  else
  {
    knownKeys = 0;
  }

  v6 = knownKeys;
  v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if (([v4 containsObject:{v11, v13}] & 1) == 0)
        {
          [(FCAssetStore *)self removeFileWithKey:v11];
        }
      }

      v8 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)removeAllFiles
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  if (self)
  {
    knownKeys = self->_knownKeys;
  }

  else
  {
    knownKeys = 0;
  }

  v4 = knownKeys;
  v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(FCAssetStore *)self removeFileWithKey:*(*(&v10 + 1) + 8 * i), v10];
      }

      v6 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (id)filePathForKey:(id)key
{
  keyCopy = key;
  if (self)
  {
    knownKeys = self->_knownKeys;
  }

  else
  {
    knownKeys = 0;
  }

  if ([(NSMutableSet *)knownKeys containsObject:keyCopy])
  {
    v6 = [(FCAssetStore *)self _filePathForKey:keyCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)fileURLForKey:(id)key
{
  v3 = [(FCAssetStore *)self filePathForKey:key];
  if (v3)
  {
    v4 = [MEMORY[0x1E695DFF8] fileURLWithPath:v3 isDirectory:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unint64_t)sizeOfFileForKey:(id)key
{
  v18 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  if (!keyCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "key"];
    *buf = 136315906;
    v11 = "[FCAssetStore sizeOfFileForKey:]";
    v12 = 2080;
    v13 = "FCAssetStore.m";
    v14 = 1024;
    v15 = 253;
    v16 = 2114;
    v17 = v9;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v5 = [(FCAssetStore *)self _filePathForKey:keyCopy];
  v6 = [(FCAssetStore *)self _sizeOfFileAtPath:v5];

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (off_t)_sizeOfFileAtPath:(off_t)result
{
  if (result)
  {
    memset(&v2, 0, sizeof(v2));
    if (lstat([a2 fileSystemRepresentation], &v2))
    {
      return 0;
    }

    else
    {
      return v2.st_size;
    }
  }

  return result;
}

- (unint64_t)storeSize
{
  selfCopy = self;
  if (self)
  {
    self = self->_knownKeys;
  }

  allObjects = [(FCAssetStore *)self allObjects];
  v4 = [(FCAssetStore *)selfCopy storeSizeForKeys:allObjects];

  return v4;
}

- (unint64_t)storeSizeForKeys:(id)keys
{
  v20 = *MEMORY[0x1E69E9840];
  keysCopy = keys;
  v5 = objc_autoreleasePoolPush();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = keysCopy;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = [(FCAssetStore *)self _filePathForKey:?];
        v9 += [(FCAssetStore *)self _sizeOfFileAtPath:v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  objc_autoreleasePoolPop(v5);
  v13 = *MEMORY[0x1E69E9840];
  return v9;
}

@end