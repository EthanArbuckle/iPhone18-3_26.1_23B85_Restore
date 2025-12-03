@interface _CDSharedMemoryContextPersisting
+ (id)persistenceWithSharedMemoryKeyValueStore:(id)store;
+ (id)sharedMemoryKeyFromKeyPath:(id)path;
+ (id)sharedMemoryKeyFromRegistration:(id)registration;
- (_CDSharedMemoryContextPersisting)initWithSharedMemoryKeyValueStore:(id)store;
- (id)allKeysForContextStore;
- (id)loadRegistrations;
- (id)loadValues;
- (void)deleteAllData;
- (void)deleteKeyPaths:(id)paths;
- (void)deleteRegistration:(id)registration;
- (void)saveRegistration:(id)registration;
- (void)saveValue:(id)value forKeyPath:(id)path;
@end

@implementation _CDSharedMemoryContextPersisting

- (_CDSharedMemoryContextPersisting)initWithSharedMemoryKeyValueStore:(id)store
{
  storeCopy = store;
  v19.receiver = self;
  v19.super_class = _CDSharedMemoryContextPersisting;
  v6 = [(_CDSharedMemoryContextPersisting *)&v19 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_store, store);
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.coreduetcontext.service.sharedmemorypersistence", v8);
    queue = v7->_queue;
    v7->_queue = v9;

    v11 = +[_CDDevice localDevice];
    deviceID = [v11 deviceID];
    localDeviceID = v7->_localDeviceID;
    v7->_localDeviceID = deviceID;

    v14 = [MEMORY[0x1E696AB50] set];
    keyPathRegistrationCount = v7->_keyPathRegistrationCount;
    v7->_keyPathRegistrationCount = v14;

    v16 = [MEMORY[0x1E696AB50] set];
    legacyKeyPathRegistrationCount = v7->_legacyKeyPathRegistrationCount;
    v7->_legacyKeyPathRegistrationCount = v16;
  }

  return v7;
}

+ (id)persistenceWithSharedMemoryKeyValueStore:(id)store
{
  storeCopy = store;
  v5 = [[self alloc] initWithSharedMemoryKeyValueStore:storeCopy];

  return v5;
}

+ (id)sharedMemoryKeyFromKeyPath:(id)path
{
  v3 = MEMORY[0x1E696AEC0];
  pathCopy = path;
  v5 = [pathCopy key];
  v6 = MEMORY[0x1E696AD98];
  isUserCentric = [pathCopy isUserCentric];

  v8 = [v6 numberWithBool:isUserCentric];
  v9 = [v3 stringWithFormat:@"%@.%@.%@", @"context.keyPath", v5, v8];

  return v9;
}

+ (id)sharedMemoryKeyFromRegistration:(id)registration
{
  v3 = MEMORY[0x1E696AEC0];
  identifier = [registration identifier];
  v5 = [v3 stringWithFormat:@"%@.%@", @"context.registration", identifier];

  return v5;
}

- (void)saveValue:(id)value forKeyPath:(id)path
{
  valueCopy = value;
  pathCopy = path;
  value = [valueCopy value];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
  }

  else
  {
    deviceID = [pathCopy deviceID];
    if (deviceID)
    {
      v10 = deviceID;
      deviceID2 = [pathCopy deviceID];
      v12 = [deviceID2 isEqualToString:self->_localDeviceID];

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
    v15 = pathCopy;
    selfCopy = self;
    v17 = valueCopy;
    dispatch_sync(queue, block);
  }

LABEL_8:
}

- (void)deleteKeyPaths:(id)paths
{
  pathsCopy = paths;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51___CDSharedMemoryContextPersisting_deleteKeyPaths___block_invoke;
  v7[3] = &unk_1E7886250;
  v8 = pathsCopy;
  selfCopy = self;
  v6 = pathsCopy;
  dispatch_sync(queue, v7);
}

- (void)saveRegistration:(id)registration
{
  registrationCopy = registration;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53___CDSharedMemoryContextPersisting_saveRegistration___block_invoke;
  v7[3] = &unk_1E7886250;
  v8 = registrationCopy;
  selfCopy = self;
  v6 = registrationCopy;
  dispatch_sync(queue, v7);
}

- (void)deleteRegistration:(id)registration
{
  registrationCopy = registration;
  predicate = [registrationCopy predicate];
  keyPaths = [predicate keyPaths];

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55___CDSharedMemoryContextPersisting_deleteRegistration___block_invoke;
  block[3] = &unk_1E7886228;
  block[4] = self;
  v11 = registrationCopy;
  v12 = keyPaths;
  v8 = keyPaths;
  v9 = registrationCopy;
  dispatch_sync(queue, block);
  [(_CDSharedMemoryContextPersisting *)self deleteKeyPaths:v8];
}

- (id)allKeysForContextStore
{
  array = [MEMORY[0x1E695DF70] array];
  queue = self->_queue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __58___CDSharedMemoryContextPersisting_allKeysForContextStore__block_invoke;
  v9[3] = &unk_1E7886250;
  v9[4] = self;
  v5 = array;
  v10 = v5;
  dispatch_sync(queue, v9);
  v6 = v10;
  v7 = v5;

  return v5;
}

- (id)loadValues
{
  selfCopy = self;
  v41 = *MEMORY[0x1E69E9840];
  allKeysForContextStore = [(_CDSharedMemoryContextPersisting *)self allKeysForContextStore];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v4 = allKeysForContextStore;
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
          v12 = [(_CDSharedMemoryKeyValueStore *)selfCopy->_store dataForKey:v11];
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
                value = [v15 value];
                [v15 keyPath];
                v30 = v16;
                v18 = v7;
                v19 = v9;
                v20 = v8;
                v21 = v4;
                v23 = v22 = selfCopy;
                [dictionary setObject:value forKeyedSubscript:v23];

                selfCopy = v22;
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

  v25 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:dictionary];

  v26 = *MEMORY[0x1E69E9840];

  return v25;
}

- (id)loadRegistrations
{
  v32 = *MEMORY[0x1E69E9840];
  allKeysForContextStore = [(_CDSharedMemoryContextPersisting *)self allKeysForContextStore];
  array = [MEMORY[0x1E695DF70] array];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v4 = allKeysForContextStore;
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
                [array addObject:v14];
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

  v17 = [MEMORY[0x1E695DEC8] arrayWithArray:array];

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (void)deleteAllData
{
  allKeysForContextStore = [(_CDSharedMemoryContextPersisting *)self allKeysForContextStore];
  store = self->_store;
  v4 = [MEMORY[0x1E695DEC8] arrayWithArray:allKeysForContextStore];
  [(_CDSharedMemoryKeyValueStore *)store removeDataForKeys:v4];
}

@end