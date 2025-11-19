@interface _CDSharedMemoryKeyValueStore
+ (NSObject)readKeyedDataDictionaryFromMemory:(unint64_t)a3 size:;
+ (id)defaultName;
+ (id)keyValueStoreWithName:(id)a3 size:(unint64_t)a4;
+ (id)log;
+ (id)sharedInstance;
+ (void)openOrCreateSharedMemoryWithName:(size_t)a3 size:;
- (BOOL)removeDataForKey:(id)a3;
- (BOOL)removeDataForKeys:(id)a3;
- (BOOL)setData:(id)a3 forKey:(id)a4;
- (BOOL)syncPersistToShMem;
- (id)allKeys;
- (id)dataForKey:(id)a3;
- (id)description;
- (id)errorForExceedingSizeLimits;
- (uint64_t)_persistToShMem;
- (void)_persistToShMem;
- (void)initWithName:(uint64_t)a3 size:;
- (void)schedulePersistToShMem;
- (void)setValue:(id)a3 forKey:(id)a4;
@end

@implementation _CDSharedMemoryKeyValueStore

- (void)schedulePersistToShMem
{
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 8));
    if (!*(a1 + 24))
    {
      v2 = os_transaction_create();
      v3 = *(a1 + 24);
      *(a1 + 24) = v2;

      v4 = *(a1 + 16);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __54___CDSharedMemoryKeyValueStore_schedulePersistToShMem__block_invoke;
      block[3] = &unk_1E7367440;
      block[4] = a1;
      dispatch_async(v4, block);
    }
  }
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46___CDSharedMemoryKeyValueStore_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken_1 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_1, block);
  }

  v2 = sharedInstance_theStore;

  return v2;
}

- (id)errorForExceedingSizeLimits
{
  v7[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = MEMORY[0x1E696ABC0];
    v6 = *MEMORY[0x1E696A588];
    v7[0] = @"Serialized size exceeds shared memory capacity";
    v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
    v3 = [v1 errorWithDomain:@"com.apple.coreduet.sharedmemorykeyvaluestore" code:0 userInfo:v2];
  }

  else
  {
    v3 = 0;
  }

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (uint64_t)_persistToShMem
{
  v39 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    dispatch_assert_queue_V2(*(result + 16));
    kdebug_trace();
    v30 = 0;
    v31 = &v30;
    v32 = 0x3032000000;
    v33 = __Block_byref_object_copy__4;
    v34 = __Block_byref_object_dispose__4;
    v35 = 0;
    if (os_log_type_enabled(*(v1 + 40), OS_LOG_TYPE_DEBUG))
    {
      [_CDSharedMemoryKeyValueStore _persistToShMem];
    }

    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = __Block_byref_object_copy__4;
    v28 = __Block_byref_object_dispose__4;
    v29 = 0;
    v2 = *(v1 + 8);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __47___CDSharedMemoryKeyValueStore__persistToShMem__block_invoke;
    block[3] = &unk_1E7367ED0;
    block[4] = v1;
    block[5] = &v30;
    block[6] = &v24;
    dispatch_sync(v2, block);
    if (v31[5])
    {
      if ([v1 size] > 0xF)
      {
        **(v1 + 56) = 0;
        v21 = 0u;
        v22 = 0u;
        v19 = 0u;
        v20 = 0u;
        obj = v25[5];
        v5 = 0;
        v4 = 0;
        v6 = [obj countByEnumeratingWithState:&v19 objects:v38 count:16];
        if (v6)
        {
          v7 = 16;
          v8 = *v20;
          do
          {
            v9 = 0;
            do
            {
              if (*v20 != v8)
              {
                objc_enumerationMutation(obj);
              }

              v10 = *(*(&v19 + 1) + 8 * v9);
              buf[0] = 0;
              v11 = [(_CDSerializableKeyedData *)v10 serializeTo:*(v1 + 64) - v7 maxSize:buf success:?];
              v12 = v11;
              if (buf[0])
              {
                ++v5;
                v7 += v11;
              }

              else
              {
                v13 = [(_CDSharedMemoryKeyValueStore *)v1 errorForExceedingSizeLimits];

                v18[0] = MEMORY[0x1E69E9820];
                v18[1] = 3221225472;
                v18[2] = __47___CDSharedMemoryKeyValueStore__persistToShMem__block_invoke_19;
                v18[3] = &unk_1E7367EF8;
                v18[6] = &v24;
                v18[7] = v12;
                v18[8] = v7;
                v18[4] = v10;
                v18[5] = v1;
                if (_persistToShMem_onceToken != -1)
                {
                  dispatch_once(&_persistToShMem_onceToken, v18);
                }

                v4 = v13;
              }

              ++v9;
            }

            while (v6 != v9);
            v6 = [obj countByEnumeratingWithState:&v19 objects:v38 count:16];
          }

          while (v6);
        }

        else
        {
          v7 = 16;
        }

        v14 = *(v1 + 56);
        *(v14 + 8) = v5;
        *v14 = 1;
        v15 = +[_CDLogging instrumentationChannel];
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          -[_CDSharedMemoryKeyValueStore _persistToShMem].cold.2(buf, v7, [v1 size], v15);
        }

        goto LABEL_28;
      }

      v3 = [(_CDSharedMemoryKeyValueStore *)v1 errorForExceedingSizeLimits];
    }

    else
    {
      if (os_log_type_enabled(*(v1 + 40), OS_LOG_TYPE_DEBUG))
      {
        [_CDSharedMemoryKeyValueStore _persistToShMem];
      }

      v3 = *(v1 + 32);
    }

    v4 = v3;
LABEL_28:
    _Block_object_dispose(&v24, 8);

    objc_storeStrong((v1 + 32), v4);
    [v4 code];
    kdebug_trace();
    v36 = v4 == 0;
    _Block_object_dispose(&v30, 8);

    result = v36;
  }

  v16 = *MEMORY[0x1E69E9840];
  return result;
}

+ (id)defaultName
{
  v2 = [MEMORY[0x1E696AAE8] mainBundle];
  v3 = [v2 bundleIdentifier];

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v5 = [MEMORY[0x1E696AE30] processInfo];
    v6 = [v5 processName];

    if (v6)
    {
      v4 = v6;
    }

    else
    {
      v4 = @"/CDSharedMemoryKeyValueStore";
    }
  }

  return v4;
}

+ (id)log
{
  objc_opt_self();
  if (log_onceToken != -1)
  {
    +[_CDSharedMemoryKeyValueStore log];
  }

  v0 = log_log;

  return v0;
}

+ (void)openOrCreateSharedMemoryWithName:(size_t)a3 size:
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a2;
  objc_opt_self();
  v5 = +[_CDSharedMemoryKeyValueStore log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v16 = v4;
    _os_log_impl(&dword_191750000, v5, OS_LOG_TYPE_DEFAULT, "Attempting to open %{public}@ in shared memory", buf, 0xCu);
  }

  v6 = shm_open([v4 UTF8String], 2, 384);
  v7 = +[_CDSharedMemoryKeyValueStore log];
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6 == -1)
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&dword_191750000, v7, OS_LOG_TYPE_DEFAULT, "Shared memory is not present. Creating it.", buf, 2u);
    }

    v11 = shm_open([v4 UTF8String], 514, 384);
    if (v11 == -1)
    {
      v10 = +[_CDSharedMemoryKeyValueStore log];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        +[_CDSharedMemoryKeyValueStore openOrCreateSharedMemoryWithName:size:];
      }

      goto LABEL_17;
    }

    v12 = v11;
    if (ftruncate(v11, a3))
    {
      v10 = +[_CDSharedMemoryKeyValueStore log];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        +[_CDSharedMemoryKeyValueStore openOrCreateSharedMemoryWithName:size:];
      }

      goto LABEL_17;
    }

    v9 = mmap(0, a3, 3, 1, v12, 0);
    close(v12);
    if (v9 != -1)
    {
      goto LABEL_18;
    }

    v10 = +[_CDSharedMemoryKeyValueStore log];
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    goto LABEL_8;
  }

  if (v8)
  {
    *buf = 0;
    _os_log_impl(&dword_191750000, v7, OS_LOG_TYPE_DEFAULT, "Opened shared memory", buf, 2u);
  }

  v9 = mmap(0, a3, 3, 1, v6, 0);
  close(v6);
  if (v9 == -1)
  {
    v10 = +[_CDSharedMemoryKeyValueStore log];
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
LABEL_17:

      v9 = 0;
      goto LABEL_18;
    }

LABEL_8:
    +[_CDSharedMemoryKeyValueStore openOrCreateSharedMemoryWithName:size:];
    goto LABEL_17;
  }

LABEL_18:

  v13 = *MEMORY[0x1E69E9840];
  return v9;
}

+ (NSObject)readKeyedDataDictionaryFromMemory:(unint64_t)a3 size:
{
  objc_opt_self();
  v5 = *(a2 + 8);
  if (*a2)
  {
    v6 = [MEMORY[0x1E695DF90] dictionary];
    if (!v5)
    {
      goto LABEL_24;
    }

    v7 = 16;
    while (a3 > v7)
    {
      v8 = [_CDSerializableKeyedData keyedDataDeserializedFrom:a3 - v7 maxSize:?];
      v10 = v8;
      if (!v8)
      {
        v16 = +[_CDSharedMemoryKeyValueStore log];
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          +[_CDSharedMemoryKeyValueStore readKeyedDataDictionaryFromMemory:size:];
        }

        goto LABEL_21;
      }

      if (!objc_getProperty(v8, v9, 24, 1))
      {
        v16 = +[_CDSharedMemoryKeyValueStore log];
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          +[_CDSharedMemoryKeyValueStore readKeyedDataDictionaryFromMemory:size:];
        }

LABEL_21:

        v15 = v6;
        goto LABEL_22;
      }

      [v6 setObject:v10 forKeyedSubscript:objc_getProperty(v10, v11, 24, 1)];
      v12 = [v10[1] length];
      v7 += v12 + [v10[4] length] + 18;

      if (!--v5)
      {
        goto LABEL_24;
      }
    }

    v15 = +[_CDSharedMemoryKeyValueStore log];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [(_CDSharedMemoryKeyValueStore *)v7 readKeyedDataDictionaryFromMemory:a3 size:v15];
    }
  }

  else
  {
    v13 = readKeyedDataDictionaryFromMemory_size__invalidHeaderCount++;
    if (v13 == 1)
    {
      v14 = +[_CDSharedMemoryKeyValueStore log];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        [_CDSharedMemoryKeyValueStore readKeyedDataDictionaryFromMemory:v5 size:v14];
      }
    }

    v15 = +[_CDSharedMemoryKeyValueStore log];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      +[_CDSharedMemoryKeyValueStore readKeyedDataDictionaryFromMemory:size:];
    }

LABEL_22:
    v6 = 0;
  }

LABEL_24:

  return v6;
}

- (BOOL)syncPersistToShMem
{
  v2 = self;
  dispatch_assert_queue_not_V2(self->_queue);
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  persistQueue = v2->_persistQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50___CDSharedMemoryKeyValueStore_syncPersistToShMem__block_invoke;
  v5[3] = &unk_1E7367398;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(persistQueue, v5);
  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

- (BOOL)setData:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 1;
  queue = self->_queue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __47___CDSharedMemoryKeyValueStore_setData_forKey___block_invoke;
  v12[3] = &unk_1E7367F20;
  v12[4] = self;
  v13 = v7;
  v14 = v6;
  v15 = &v16;
  v9 = v6;
  v10 = v7;
  dispatch_sync(queue, v12);
  LOBYTE(v6) = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  return v6;
}

- (BOOL)removeDataForKey:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v4 = MEMORY[0x1E695DEC8];
  v5 = a3;
  v6 = [v4 arrayWithObjects:&v9 count:1];

  LOBYTE(self) = [(_CDSharedMemoryKeyValueStore *)self removeDataForKeys:v6, v9, v10];
  v7 = *MEMORY[0x1E69E9840];
  return self;
}

- (BOOL)removeDataForKeys:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __50___CDSharedMemoryKeyValueStore_removeDataForKeys___block_invoke;
    v7[3] = &unk_1E7367710;
    v7[4] = self;
    v8 = v4;
    dispatch_sync(queue, v7);
  }

  return 1;
}

- (id)dataForKey:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__4;
  v16 = __Block_byref_object_dispose__4;
  v17 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43___CDSharedMemoryKeyValueStore_dataForKey___block_invoke;
  block[3] = &unk_1E7367248;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)allKeys
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__4;
  v10 = __Block_byref_object_dispose__4;
  v11 = MEMORY[0x1E695E0F0];
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39___CDSharedMemoryKeyValueStore_allKeys__block_invoke;
  v5[3] = &unk_1E7367398;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setValue:(id)a3 forKey:(id)a4
{
  v7 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(_CDSharedMemoryKeyValueStore *)self setData:v7 forKey:v6];
  }
}

- (id)description
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = self->_dictionary;
  v4 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v19;
    do
    {
      v8 = 0;
      do
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v18 + 1) + 8 * v8);
        v10 = [(NSMutableDictionary *)self->_dictionary objectForKeyedSubscript:v9];
        v11 = v10;
        if (v10)
        {
          v12 = [*(v10 + 8) length];
          v13 = v12 + [v11[4] length] + 18;
        }

        else
        {
          v13 = 0;
        }

        v6 += v13;
        [v3 appendFormat:@"%@: %zu\n", v9, v13];

        ++v8;
      }

      while (v5 != v8);
      v14 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
      v5 = v14;
    }

    while (v14);
  }

  else
  {
    v6 = 0;
  }

  [v3 appendFormat:@"totalSize: %zu\n", v6];
  v15 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)initWithName:(uint64_t)a3 size:
{
  v46 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = v5;
  if (!a1 || ![v5 length])
  {
    goto LABEL_18;
  }

  v39.receiver = a1;
  v39.super_class = _CDSharedMemoryKeyValueStore;
  v7 = objc_msgSendSuper2(&v39, sel_init);
  a1 = v7;
  if (v7)
  {
    v7[7] = 0;
    if (!a3)
    {
      a3 = [objc_opt_class() defaultSize];
    }

    a1[8] = a3;
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.CoreDuet.SharedMemoryKeyValueStore", v8);
    v10 = a1[1];
    a1[1] = v9;

    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_attr_make_with_qos_class(v11, QOS_CLASS_BACKGROUND, 0);

    v13 = dispatch_queue_create("com.apple.CoreDuet.SharedMemoryKeyValueStore.Persistence", v12);
    v14 = a1[2];
    a1[2] = v13;

    v15 = +[_CDSharedMemoryKeyValueStore log];
    v16 = a1[5];
    a1[5] = v15;

    v17 = [MEMORY[0x1E695DF90] dictionary];
    v18 = a1[6];
    a1[6] = v17;

    v19 = [_CDSharedMemoryKeyValueStore openOrCreateSharedMemoryWithName:v6 size:a1[8]];
    a1[7] = v19;
    if (v19)
    {
      v20 = [_CDSharedMemoryKeyValueStore readKeyedDataDictionaryFromMemory:v19 size:a1[8]];
      v21 = a1[6];
      a1[6] = v20;

      if (!a1[6])
      {
        v22 = a1[5];
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v36 = v6;
          v37 = v22;
          v38 = [v6 UTF8String];
          *buf = 136315138;
          v41 = v38;
          _os_log_error_impl(&dword_191750000, v37, OS_LOG_TYPE_ERROR, "Failed to read/load store with name %s", buf, 0xCu);
        }

        v23 = [MEMORY[0x1E695DF90] dictionary];
        v24 = a1[6];
        a1[6] = v23;
      }

      v25 = a1[5];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v27 = a1[7];
        v26 = a1[8];
        *buf = 138412802;
        v41 = v6;
        v42 = 1024;
        v43 = v26;
        v44 = 2048;
        v45 = v27;
        _os_log_impl(&dword_191750000, v25, OS_LOG_TYPE_DEFAULT, "Created store with name %@, size %d, address %p", buf, 0x1Cu);
      }

      goto LABEL_14;
    }

    v29 = a1[5];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v32 = v6;
      v33 = v29;
      v34 = [v6 UTF8String];
      v35 = a1[8];
      *buf = 136315394;
      v41 = v34;
      v42 = 1024;
      v43 = v35;
      _os_log_error_impl(&dword_191750000, v33, OS_LOG_TYPE_ERROR, "Failed to create store with name %s, size %d", buf, 0x12u);
    }

LABEL_18:
    v28 = 0;
    goto LABEL_19;
  }

LABEL_14:
  a1 = a1;
  v28 = a1;
LABEL_19:

  v30 = *MEMORY[0x1E69E9840];
  return v28;
}

+ (id)keyValueStoreWithName:(id)a3 size:(unint64_t)a4
{
  v6 = a3;
  v7 = [(_CDSharedMemoryKeyValueStore *)[a1 alloc] initWithName:v6 size:a4];

  return v7;
}

+ (void)openOrCreateSharedMemoryWithName:size:.cold.1()
{
  OUTLINED_FUNCTION_6();
  v9 = *MEMORY[0x1E69E9840];
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1_6(&dword_191750000, v1, v2, "mmap failed for name %{public}@ Error: %{public}s", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

+ (void)openOrCreateSharedMemoryWithName:size:.cold.2()
{
  OUTLINED_FUNCTION_6();
  v9 = *MEMORY[0x1E69E9840];
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1_6(&dword_191750000, v1, v2, "Failed to truncate shared memory with name %{public}@ Error: %{public}s", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

+ (void)openOrCreateSharedMemoryWithName:size:.cold.4()
{
  OUTLINED_FUNCTION_6();
  v9 = *MEMORY[0x1E69E9840];
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1_6(&dword_191750000, v1, v2, "Failed to open shared memory with name: %{public}@ Error: %{public}s", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

+ (void)readKeyedDataDictionaryFromMemory:(uint64_t)a1 size:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 134217984;
  v4 = a1;
  _os_log_fault_impl(&dword_191750000, a2, OS_LOG_TYPE_FAULT, "Encountered invalid header: {isValid=0; size=%zu}", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)readKeyedDataDictionaryFromMemory:size:.cold.2()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)readKeyedDataDictionaryFromMemory:(os_log_t)log size:.cold.3(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 134218240;
  v5 = a1;
  v6 = 2048;
  v7 = a2;
  _os_log_error_impl(&dword_191750000, log, OS_LOG_TYPE_ERROR, "Attempt to read offset %lu > %lu", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

+ (void)readKeyedDataDictionaryFromMemory:size:.cold.4()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)readKeyedDataDictionaryFromMemory:size:.cold.5()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_persistToShMem
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

@end