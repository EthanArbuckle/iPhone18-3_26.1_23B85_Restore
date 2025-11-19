@interface CDSharedMemoryKeyValueStore
@end

@implementation CDSharedMemoryKeyValueStore

void __47___CDSharedMemoryKeyValueStore__persistToShMem__block_invoke(void *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  objc_storeStrong((*(a1[5] + 8) + 40), *(a1[4] + 24));
  if (*(*(a1[5] + 8) + 40))
  {
    v2 = a1[4];
    v3 = *(v2 + 24);
    *(v2 + 24) = 0;

    v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(*(a1[4] + 48), "count")}];
    v5 = *(a1[6] + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = *(a1[4] + 48);
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        v11 = 0;
        do
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(a1[6] + 8) + 40);
          v13 = [*(a1[4] + 48) objectForKeyedSubscript:{*(*(&v16 + 1) + 8 * v11), v16}];
          v14 = [v13 copy];
          [v12 addObject:v14];

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __46___CDSharedMemoryKeyValueStore_sharedInstance__block_invoke(uint64_t a1)
{
  v2 = objc_alloc(*(a1 + 32));
  v5 = [*(a1 + 32) defaultName];
  v3 = -[_CDSharedMemoryKeyValueStore initWithName:size:](v2, v5, [*(a1 + 32) defaultSize]);
  v4 = sharedInstance_theStore;
  sharedInstance_theStore = v3;
}

uint64_t __35___CDSharedMemoryKeyValueStore_log__block_invoke()
{
  v0 = os_log_create("com.apple.coreduet", "SharedMemoryKeyValueStore");
  v1 = log_log;
  log_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void __47___CDSharedMemoryKeyValueStore__persistToShMem__block_invoke_19(void *a1)
{
  v45 = *MEMORY[0x1E69E9840];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v2 = *(*(a1[6] + 8) + 40);
  v3 = [v2 countByEnumeratingWithState:&v26 objects:v44 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = 0;
    v7 = *v27;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v27 != v7)
        {
          objc_enumerationMutation(v2);
        }

        v9 = *(*(&v26 + 1) + 8 * i);
        if (v9)
        {
          v10 = [v9[1] length];
          v12 = v10 + [v9[4] length] + 18;
          if (v12 > v5)
          {
            v13 = objc_getProperty(v9, v11, 24, 1);

            v5 = v12;
            v6 = v13;
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v26 objects:v44 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v14 = +[_CDSharedMemoryKeyValueStore log];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
  {
    v17 = a1[4];
    if (v17)
    {
      Property = objc_getProperty(v17, v15, 24, 1);
    }

    else
    {
      Property = 0;
    }

    v19 = MEMORY[0x1E696AD98];
    v20 = a1[7];
    v21 = *(*(a1[6] + 8) + 40);
    v22 = Property;
    v23 = [v19 numberWithUnsignedInteger:{objc_msgSend(v21, "count")}];
    v24 = a1[8];
    v25 = *(a1[5] + 64);

    *buf = 138544898;
    v31 = Property;
    v32 = 2048;
    v33 = v20;
    v34 = 2112;
    v35 = v23;
    v36 = 2114;
    v37 = v6;
    v38 = 2048;
    v39 = v5;
    v40 = 2048;
    v41 = v24;
    v42 = 2048;
    v43 = v25;
    _os_log_fault_impl(&dword_191750000, v14, OS_LOG_TYPE_FAULT, "Shared memory exhausted trying to write %{public}@ (%zuB) - %@ entries (largest %{public}@ (%zuB), %zu/%zuB full", buf, 0x48u);
  }

  v16 = *MEMORY[0x1E69E9840];
}

void __50___CDSharedMemoryKeyValueStore_syncPersistToShMem__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  *(*(*(a1 + 40) + 8) + 24) = [(_CDSharedMemoryKeyValueStore *)*(a1 + 32) _persistToShMem];

  objc_autoreleasePoolPop(v2);
}

void __47___CDSharedMemoryKeyValueStore_setData_forKey___block_invoke(uint64_t a1)
{
  v2 = (a1 + 40);
  v3 = [*(*(a1 + 32) + 48) objectForKeyedSubscript:*(a1 + 40)];
  if (v3)
  {
    v7 = v3;
    [(_CDSerializableKeyedData *)v3 setData:?];
    if (os_log_type_enabled(*(*(a1 + 32) + 40), OS_LOG_TYPE_DEBUG))
    {
      __47___CDSharedMemoryKeyValueStore_setData_forKey___block_invoke_cold_1(v2);
    }

    goto LABEL_6;
  }

  v4 = [_CDSerializableKeyedData alloc];
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v12 = 0;
  v7 = [(_CDSerializableKeyedData *)&v4->super.isa initWithKey:v5 data:v6 error:&v12];
  v8 = v12;
  if (!v8)
  {
    if (os_log_type_enabled(*(*(a1 + 32) + 40), OS_LOG_TYPE_DEBUG))
    {
      __47___CDSharedMemoryKeyValueStore_setData_forKey___block_invoke_cold_2(v2);
    }

    v10 = *(*(a1 + 32) + 48);
    if (v7)
    {
      Property = objc_getProperty(v7, v9, 24, 1);
    }

    else
    {
      Property = 0;
    }

    [v10 setObject:v7 forKeyedSubscript:Property];
LABEL_6:
    [(_CDSharedMemoryKeyValueStore *)*(a1 + 32) schedulePersistToShMem];
    goto LABEL_7;
  }

  *(*(*(a1 + 56) + 8) + 24) = 0;

LABEL_7:
}

uint64_t __39___CDSharedMemoryKeyValueStore_allKeys__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 48) allKeys];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void __50___CDSharedMemoryKeyValueStore_removeDataForKeys___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 48) removeObjectsForKeys:*(a1 + 40)];
  v2 = *(a1 + 32);

  [(_CDSharedMemoryKeyValueStore *)v2 schedulePersistToShMem];
}

void __43___CDSharedMemoryKeyValueStore_dataForKey___block_invoke(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [*(a1[4] + 48) objectForKeyedSubscript:a1[5]];
  v4 = v2;
  if (v2)
  {
    Property = objc_getProperty(v2, v3, 32, 1);
  }

  else
  {
    Property = 0;
  }

  objc_storeStrong((*(a1[6] + 8) + 40), Property);

  v6 = *(a1[4] + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v8 = MEMORY[0x1E696AD98];
    v9 = a1[5];
    v10 = *(*(a1[6] + 8) + 40) != 0;
    v11 = v6;
    v12 = [v8 numberWithInt:v10];
    v13 = 138543618;
    v14 = v9;
    v15 = 2112;
    v16 = v12;
    _os_log_debug_impl(&dword_191750000, v11, OS_LOG_TYPE_DEBUG, "Attempt to retrieve data for key %{public}@ (was present = %@)", &v13, 0x16u);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __47___CDSharedMemoryKeyValueStore_setData_forKey___block_invoke_cold_1(uint64_t *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void __47___CDSharedMemoryKeyValueStore_setData_forKey___block_invoke_cold_2(uint64_t *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

@end