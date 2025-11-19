@interface MCMChildParentMapCache
- (MCMChildParentMapCache)initWithDB:(id)a3 queue:(id)a4;
- (MCMSQLiteDB)db;
- (NSMutableDictionary)cache;
- (OS_dispatch_queue)queue;
- (id)childBundleIdentifiersForParentIdentifier:(id)a3;
- (id)parentIdentifierForChildIdentifier:(id)a3;
- (void)codeSigningDB:(id)a3 addChildIdentifier:(id)a4 forParentIdentifier:(id)a5;
- (void)codeSigningDB:(id)a3 removeParentIdentifier:(id)a4;
@end

@implementation MCMChildParentMapCache

- (NSMutableDictionary)cache
{
  result = self->_cache;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (OS_dispatch_queue)queue
{
  result = self->_queue;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMSQLiteDB)db
{
  result = self->_db;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (void)codeSigningDB:(id)a3 removeParentIdentifier:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = [(MCMChildParentMapCache *)self cache];
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      v11 = 0;
      do
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * v11);
        v13 = [(MCMChildParentMapCache *)self cache];
        v14 = [v13 objectForKeyedSubscript:v12];

        if ([v14 isEqualToString:v5])
        {
          [v6 addObject:v12];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v19 objects:v18 count:16];
    }

    while (v9);
  }

  v15 = [(MCMChildParentMapCache *)self cache];
  v16 = [v6 allObjects];
  [v15 removeObjectsForKeys:v16];

  v17 = *MEMORY[0x1E69E9840];
}

- (void)codeSigningDB:(id)a3 addChildIdentifier:(id)a4 forParentIdentifier:(id)a5
{
  v11 = *MEMORY[0x1E69E9840];
  v7 = a5;
  v8 = a4;
  v10 = [(MCMChildParentMapCache *)self cache];
  [v10 setObject:v7 forKeyedSubscript:v8];

  v9 = *MEMORY[0x1E69E9840];
}

- (id)parentIdentifierForChildIdentifier:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(MCMChildParentMapCache *)v5 cache];
  v7 = [v6 objectForKeyedSubscript:v4];

  objc_sync_exit(v5);
  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)childBundleIdentifiersForParentIdentifier:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = objc_opt_new();
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [(MCMChildParentMapCache *)v5 cache];
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v17 count:16];
  if (v8)
  {
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = [(MCMChildParentMapCache *)v5 cache];
        v13 = [v12 objectForKeyedSubscript:v11];

        if ([v13 isEqualToString:v4])
        {
          [v6 addObject:v11];
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v18 objects:v17 count:16];
    }

    while (v8);
  }

  v14 = [v6 copy];
  objc_sync_exit(v5);

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (MCMChildParentMapCache)initWithDB:(id)a3 queue:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = MCMChildParentMapCache;
  v9 = [(MCMChildParentMapCache *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_db, a3);
    [v7 setPeerageDelegate:v10];
    objc_storeStrong(&v10->_queue, a4);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __43__MCMChildParentMapCache_initWithDB_queue___block_invoke;
    block[3] = &unk_1E86B0CC8;
    v14 = v10;
    v15 = v7;
    dispatch_sync(v8, block);
  }

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

void __43__MCMChildParentMapCache_initWithDB_queue___block_invoke(uint64_t a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v9[0] = 0;
  v3 = [v2 childParentMapWithError:v9];
  v4 = v9[0];
  v5 = [v3 mutableCopy];
  v6 = *(a1 + 32);
  v7 = *(v6 + 24);
  *(v6 + 24) = v5;

  v8 = *MEMORY[0x1E69E9840];
}

@end