@interface _CDSharedMemoryContextPersisting
+ (id)persistenceWithSharedMemoryKeyValueStore:(id)a3;
+ (id)sharedMemoryKeyFromKeyPath:(id)a3;
+ (id)sharedMemoryKeyFromRegistration:(id)a3;
- (_CDSharedMemoryContextPersisting)initWithSharedMemoryKeyValueStore:(id)a3;
- (id)allKeysForContextStore;
- (id)loadRegistrations;
- (id)loadValues;
- (void)deleteAllData;
- (void)deleteKeyPaths:(id)a3;
- (void)deleteRegistration:(id)a3;
- (void)saveRegistration:(id)a3;
- (void)saveValue:(id)a3 forKeyPath:(id)a4;
@end

@implementation _CDSharedMemoryContextPersisting

- (_CDSharedMemoryContextPersisting)initWithSharedMemoryKeyValueStore:(id)a3
{
  v5 = a3;
  v19.receiver = self;
  v19.super_class = _CDSharedMemoryContextPersisting;
  v6 = [(_CDSharedMemoryContextPersisting *)&v19 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_store, a3);
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.coreduetcontext.service.sharedmemorypersistence", v8);
    queue = v7->_queue;
    v7->_queue = v9;

    v11 = +[_CDDevice localDevice];
    v12 = [v11 deviceID];
    localDeviceID = v7->_localDeviceID;
    v7->_localDeviceID = v12;

    v14 = [MEMORY[0x1E696AB50] set];
    keyPathRegistrationCount = v7->_keyPathRegistrationCount;
    v7->_keyPathRegistrationCount = v14;

    v16 = [MEMORY[0x1E696AB50] set];
    legacyKeyPathRegistrationCount = v7->_legacyKeyPathRegistrationCount;
    v7->_legacyKeyPathRegistrationCount = v16;
  }

  return v7;
}

+ (id)persistenceWithSharedMemoryKeyValueStore:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithSharedMemoryKeyValueStore:v4];

  return v5;
}

+ (id)sharedMemoryKeyFromKeyPath:(id)a3
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a3;
  v5 = [v4 key];
  v6 = MEMORY[0x1E696AD98];
  v7 = [v4 isUserCentric];

  v8 = [v6 numberWithBool:v7];
  v9 = [v3 stringWithFormat:@"%@.%@.%@", @"context.keyPath", v5, v8];

  return v9;
}

+ (id)sharedMemoryKeyFromRegistration:(id)a3
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [a3 identifier];
  v5 = [v3 stringWithFormat:@"%@.%@", @"context.registration", v4];

  return v5;
}

- (void)saveValue:(id)a3 forKeyPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 value];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
  }

  else
  {
    v9 = [v7 deviceID];
    if (v9)
    {
      v10 = v9;
      v11 = [v7 deviceID];
      v12 = [v11 isEqualToString:self->_localDeviceID];

      if (!v12)
      {
        goto LABEL_8;
      }
    }

    else
    {
    }

    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57___CDSharedMemoryContextPersisting_saveValue_forKeyPath___block_invoke;
    block[3] = &unk_1E7886228;
    v15 = v7;
    v16 = self;
    v17 = v6;
    dispatch_sync(queue, block);
  }

LABEL_8:
}

- (void)deleteKeyPaths:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51___CDSharedMemoryContextPersisting_deleteKeyPaths___block_invoke;
  v7[3] = &unk_1E7886250;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(queue, v7);
}

- (void)saveRegistration:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53___CDSharedMemoryContextPersisting_saveRegistration___block_invoke;
  v7[3] = &unk_1E7886250;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(queue, v7);
}

- (void)deleteRegistration:(id)a3
{
  v4 = a3;
  v5 = [v4 predicate];
  v6 = [v5 keyPaths];

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55___CDSharedMemoryContextPersisting_deleteRegistration___block_invoke;
  block[3] = &unk_1E7886228;
  block[4] = self;
  v11 = v4;
  v12 = v6;
  v8 = v6;
  v9 = v4;
  dispatch_sync(queue, block);
  [(_CDSharedMemoryContextPersisting *)self deleteKeyPaths:v8];
}

- (id)allKeysForContextStore
{
  v3 = [MEMORY[0x1E695DF70] array];
  queue = self->_queue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __58___CDSharedMemoryContextPersisting_allKeysForContextStore__block_invoke;
  v9[3] = &unk_1E7886250;
  v9[4] = self;
  v5 = v3;
  v10 = v5;
  dispatch_sync(queue, v9);
  v6 = v10;
  v7 = v5;

  return v5;
}

- (id)loadValues
{
  v2 = self;
  v41 = *MEMORY[0x1E69E9840];
  v3 = [(_CDSharedMemoryContextPersisting *)self allKeysForContextStore];
  v29 = [MEMORY[0x1E695DF90] dictionary];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = @"context.keyPath";
    v9 = *v33;
    *&v6 = 138412546;
    v28 = v6;
    do
    {
      v10 = 0;
      do
      {
        if (*v33 != v9)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v32 + 1) + 8 * v10);
        if ([v11 hasPrefix:{v8, v28}])
        {
          v12 = [(_CDSharedMemoryKeyValueStore *)v2->_store dataForKey:v11];
          if (v12)
          {
            v13 = MEMORY[0x1E696ACD0];
            v14 = objc_opt_class();
            v31 = 0;
            v15 = [v13 unarchivedObjectOfClass:v14 fromData:v12 error:&v31];
            v16 = v31;
            if (v16 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = v28;
              v37 = v11;
              v38 = 2112;
              v39 = v16;
              _os_log_error_impl(&dword_1A9611000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error unarchiving contextual keypath and value for %@: %@", buf, 0x16u);
              if (v15)
              {
LABEL_11:
                v17 = [v15 value];
                [v15 keyPath];
                v30 = v16;
                v18 = v7;
                v19 = v9;
                v20 = v8;
                v21 = v4;
                v23 = v22 = v2;
                [v29 setObject:v17 forKeyedSubscript:v23];

                v2 = v22;
                v4 = v21;
                v8 = v20;
                v9 = v19;
                v7 = v18;
                v16 = v30;
              }
            }

            else if (v15)
            {
              goto LABEL_11;
            }
          }
        }

        ++v10;
      }

      while (v7 != v10);
      v24 = [v4 countByEnumeratingWithState:&v32 objects:v40 count:16];
      v7 = v24;
    }

    while (v24);
  }

  v25 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v29];

  v26 = *MEMORY[0x1E69E9840];

  return v25;
}

- (id)loadRegistrations
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = [(_CDSharedMemoryContextPersisting *)self allKeysForContextStore];
  v21 = [MEMORY[0x1E695DF70] array];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v24;
    *&v6 = 138412546;
    v20 = v6;
    do
    {
      v9 = 0;
      do
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v23 + 1) + 8 * v9);
        if ([v10 hasPrefix:{@"context.registration", v20}])
        {
          v11 = [(_CDSharedMemoryKeyValueStore *)self->_store dataForKey:v10];
          if (v11)
          {
            v12 = MEMORY[0x1E696ACD0];
            v13 = objc_opt_class();
            v22 = 0;
            v14 = [v12 unarchivedObjectOfClass:v13 fromData:v11 error:&v22];
            v15 = v22;
            if (v15 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = v20;
              v28 = v10;
              v29 = 2112;
              v30 = v15;
              _os_log_error_impl(&dword_1A9611000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error unarchiving contextual keypath registration for %@: %@", buf, 0x16u);
              if (v14)
              {
LABEL_11:
                [v21 addObject:v14];
              }
            }

            else if (v14)
            {
              goto LABEL_11;
            }
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v16 = [v4 countByEnumeratingWithState:&v23 objects:v31 count:16];
      v7 = v16;
    }

    while (v16);
  }

  v17 = [MEMORY[0x1E695DEC8] arrayWithArray:v21];

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (void)deleteAllData
{
  v5 = [(_CDSharedMemoryContextPersisting *)self allKeysForContextStore];
  store = self->_store;
  v4 = [MEMORY[0x1E695DEC8] arrayWithArray:v5];
  [(_CDSharedMemoryKeyValueStore *)store removeDataForKeys:v4];
}

@end