@interface CDSharedMemoryContextPersisting
@end

@implementation CDSharedMemoryContextPersisting

void __57___CDSharedMemoryContextPersisting_saveValue_forKeyPath___block_invoke(uint64_t a1)
{
  if (![*(a1 + 32) isEphemeral] || objc_msgSend(*(*(a1 + 40) + 32), "countForObject:", *(a1 + 32)))
  {
    v2 = [[_CDContextualKeyPathAndValue alloc] initWithKeyPath:*(a1 + 32) andValue:*(a1 + 48)];
    v8 = 0;
    v3 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v2 requiringSecureCoding:1 error:&v8];
    v4 = v8;
    if (v4)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        __57___CDSharedMemoryContextPersisting_saveValue_forKeyPath___block_invoke_cold_1(a1);
      }
    }

    v5 = *(a1 + 32);
    v6 = *(*(a1 + 40) + 8);
    v7 = [_CDSharedMemoryContextPersisting sharedMemoryKeyFromKeyPath:v5];
    [v6 setData:v3 forKey:v7];
  }
}

void __51___CDSharedMemoryContextPersisting_deleteKeyPaths___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF70] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        if ([v8 isEphemeral] && !objc_msgSend(*(*(a1 + 40) + 32), "countForObject:", v8))
        {
          v9 = [_CDSharedMemoryContextPersisting sharedMemoryKeyFromKeyPath:v8];
          [v2 addObject:v9];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  v10 = *(*(a1 + 40) + 8);
  v11 = [MEMORY[0x1E695DEC8] arrayWithArray:v2];
  [v10 removeDataForKeys:v11];

  v12 = *MEMORY[0x1E69E9840];
}

void __53___CDSharedMemoryContextPersisting_saveRegistration___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v2 = [*(a1 + 32) predicate];
  v3 = [v2 keyPaths];

  v4 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        [*(*(a1 + 40) + 24) addObject:v8];
        v9 = [*(a1 + 32) callback];

        if (v9)
        {
          [*(*(a1 + 40) + 32) addObject:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v5);
  }

  v10 = *(a1 + 32);
  v17 = 0;
  v11 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v10 requiringSecureCoding:1 error:&v17];
  v12 = v17;
  if (v12 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __53___CDSharedMemoryContextPersisting_saveRegistration___block_invoke_cold_1(a1);
  }

  v13 = *(a1 + 32);
  v14 = *(*(a1 + 40) + 8);
  v15 = [_CDSharedMemoryContextPersisting sharedMemoryKeyFromRegistration:v13];
  [v14 setData:v11 forKey:v15];

  v16 = *MEMORY[0x1E69E9840];
}

void __55___CDSharedMemoryContextPersisting_deleteRegistration___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 8);
  v3 = [_CDSharedMemoryContextPersisting sharedMemoryKeyFromRegistration:*(a1 + 40)];
  [v2 removeDataForKey:v3];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = *(a1 + 48);
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        [*(*(a1 + 32) + 24) removeObject:{v9, v12}];
        v10 = [*(a1 + 40) callback];

        if (v10)
        {
          [*(*(a1 + 32) + 32) removeObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __58___CDSharedMemoryContextPersisting_allKeysForContextStore__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 8) allKeys];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if (([v7 hasPrefix:@"context.keyPath"] & 1) != 0 || objc_msgSend(v7, "hasPrefix:", @"context.registration"))
        {
          [*(a1 + 40) addObject:v7];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __57___CDSharedMemoryContextPersisting_saveValue_forKeyPath___block_invoke_cold_1(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_1A9611000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@: Error saving data to key value store: %@", v5, 0x16u);

  v4 = *MEMORY[0x1E69E9840];
}

void __53___CDSharedMemoryContextPersisting_saveRegistration___block_invoke_cold_1(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_1A9611000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@: Error saving registration data to key value store: %@", v5, 0x16u);

  v4 = *MEMORY[0x1E69E9840];
}

@end