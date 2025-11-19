@interface BMSimpleKeyValueStorage
- (BMSimpleKeyValueStorage)initWithURL:(id)a3;
- (id)_fetchValueForKey:(id)a3;
- (id)fetchValueForKey:(id)a3;
- (id)readDictionary;
- (void)_deleteValueForKey:(id)a3;
- (void)_insertValue:(id)a3 forKey:(id)a4;
- (void)deleteValueForKey:(id)a3;
- (void)insertValue:(id)a3 forKey:(id)a4;
- (void)storeDictionary:(id)a3;
@end

@implementation BMSimpleKeyValueStorage

- (BMSimpleKeyValueStorage)initWithURL:(id)a3
{
  v5 = a3;
  v18.receiver = self;
  v18.super_class = BMSimpleKeyValueStorage;
  v6 = [(BMSimpleKeyValueStorage *)&v18 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_url, a3);
    v8 = dispatch_queue_create("com.apple.biome.kvstorage", 0);
    queue = v7->_queue;
    v7->_queue = v8;

    v17 = 0;
    v10 = [v5 path];
    v11 = [v10 stringByDeletingLastPathComponent];

    if ([MEMORY[0x1E698E9C8] pathIsManaged:v11 domain:&v17] && (objc_msgSend(MEMORY[0x1E698E9D8], "current"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "reliesOnDirectAccessForDomain:", v17), v12, !v13))
    {
      v14 = [MEMORY[0x1E698E9B8] fileManagerWithMediatedAccessToDirectory:v11 useCase:*MEMORY[0x1E698E928] domain:v17 user:geteuid()];
    }

    else
    {
      v14 = [MEMORY[0x1E698E9B8] fileManagerWithDirectAccessToDirectory:v11 cachingOptions:0];
    }

    fileManager = v7->_fileManager;
    v7->_fileManager = v14;
  }

  return v7;
}

- (void)insertValue:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BMSimpleKeyValueStorage *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__BMSimpleKeyValueStorage_insertValue_forKey___block_invoke;
  block[3] = &unk_1E6E52980;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_barrier_async(v8, block);
}

- (void)_insertValue:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(BMSimpleKeyValueStorage *)self readDictionary];
  [v8 setValue:v7 forKey:v6];

  [(BMSimpleKeyValueStorage *)self storeDictionary:v8];
}

- (id)fetchValueForKey:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__0;
  v16 = __Block_byref_object_dispose__0;
  v17 = 0;
  v5 = [(BMSimpleKeyValueStorage *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__BMSimpleKeyValueStorage_fetchValueForKey___block_invoke;
  block[3] = &unk_1E6E529A8;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(v5, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __44__BMSimpleKeyValueStorage_fetchValueForKey___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _fetchValueForKey:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (id)_fetchValueForKey:(id)a3
{
  v4 = a3;
  v5 = [(BMSimpleKeyValueStorage *)self readDictionary];
  v6 = [v5 valueForKey:v4];

  return v6;
}

- (void)deleteValueForKey:(id)a3
{
  v4 = a3;
  v5 = [(BMSimpleKeyValueStorage *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__BMSimpleKeyValueStorage_deleteValueForKey___block_invoke;
  v7[3] = &unk_1E6E529D0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (void)_deleteValueForKey:(id)a3
{
  v4 = a3;
  v5 = [(BMSimpleKeyValueStorage *)self readDictionary];
  [v5 removeObjectForKey:v4];

  [(BMSimpleKeyValueStorage *)self storeDictionary:v5];
}

- (id)readDictionary
{
  fileManager = self->_fileManager;
  p_url = &self->_url;
  v4 = [(NSURL *)self->_url path];
  v16 = 0;
  v5 = [(BMFileManager *)fileManager dataWithContentsOfFileAtPath:v4 error:&v16];
  v6 = v16;

  if (!v6)
  {
    v9 = MEMORY[0x1E696ACD0];
    v10 = [MEMORY[0x1E696AB10] bm_allowedClassesForSecureCodingBMBookmark];
    v15 = 0;
    v11 = [v9 unarchivedObjectOfClasses:v10 fromData:v5 error:&v15];
    v6 = v15;

    if (v6)
    {
      v12 = __biome_log_for_category();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [(BMSimpleKeyValueStorage *)p_url readDictionary];
      }
    }

    else
    {
      if (!v11)
      {
        goto LABEL_9;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = v11;
        goto LABEL_10;
      }

      v12 = __biome_log_for_category();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [(BMSimpleKeyValueStorage *)v11 readDictionary];
      }
    }

LABEL_9:
    v13 = objc_opt_new();
LABEL_10:
    v8 = v13;

    goto LABEL_11;
  }

  v7 = __biome_log_for_category();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [(BMSimpleKeyValueStorage *)p_url readDictionary];
  }

  v8 = objc_opt_new();
LABEL_11:

  return v8;
}

- (void)storeDictionary:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v16 = 0;
  v5 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v4 requiringSecureCoding:1 error:&v16];
  v6 = v16;
  if (v6)
  {
    v7 = v6;
    v8 = __biome_log_for_category();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [MEMORY[0x1E698E9C8] privacyURLToString:self->_url];
      *buf = 138412802;
      v18 = v4;
      v19 = 2114;
      v20 = v9;
      v21 = 2112;
      v22 = v7;
      v10 = "Failed to archive dictionary:%@ at path:%{public}@ error:%@";
LABEL_7:
      _os_log_error_impl(&dword_1848EE000, v8, OS_LOG_TYPE_ERROR, v10, buf, 0x20u);

      goto LABEL_8;
    }

    goto LABEL_8;
  }

  fileManager = self->_fileManager;
  v12 = [(NSURL *)self->_url path];
  v15 = 0;
  v13 = [(BMFileManager *)fileManager replaceFileAtPath:v12 withData:v5 protection:0xFFFFFFFFLL flags:0 error:&v15];
  v7 = v15;

  if (v13)
  {
    v8 = __biome_log_for_category();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [MEMORY[0x1E698E9C8] privacyURLToString:self->_url];
      *buf = 138412802;
      v18 = v4;
      v19 = 2114;
      v20 = v9;
      v21 = 2112;
      v22 = v7;
      v10 = "Failed to store dictionary:%@ at path:%{public}@ error:%@";
      goto LABEL_7;
    }

LABEL_8:
  }

  v14 = *MEMORY[0x1E69E9840];
}

@end