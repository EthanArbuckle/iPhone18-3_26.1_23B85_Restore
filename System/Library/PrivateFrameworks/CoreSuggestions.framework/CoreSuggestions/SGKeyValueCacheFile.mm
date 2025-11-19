@interface SGKeyValueCacheFile
+ (id)encodedStringForFullName:(id)a3;
+ (id)fullNameForEncodedContact:(id)a3;
+ (id)keyValueCacheForPath:(id)a3;
+ (id)pathToCache;
+ (void)clearCacheAtPath:(id)a3;
- (SGKeyValueCacheFile)initWithCoder:(id)a3;
- (SGKeyValueCacheFile)initWithFileDescriptor:(int)a3;
- (SGKeyValueCacheFile)initWithPath:(id)a3;
- (id)_map;
- (id)description;
- (id)initBlank;
- (id)initInMemory;
- (id)initTemporaryForOverwritingCache:(id)a3;
- (id)valueForKey:(id)a3 found:(BOOL *)a4;
- (void)commitTemporaryFile;
- (void)dealloc;
- (void)deleteValueByRecordId:(id)a3;
- (void)deleteValueByRecordIdSet:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)enumerateRowsWithBlock:(void *)a1;
- (void)setValue:(id)a3 forKey:(id)a4 fromRecordId:(id)a5;
- (void)setValueIfNotPresent:(id)a3 forKey:(id)a4 fromRecordId:(id)a5;
- (void)setValueIfNotPresentWithDict:(id)a3 fromRecordId:(id)a4;
@end

@implementation SGKeyValueCacheFile

- (id)_map
{
  v27 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock(&self->_lock);
  memStore = self->_memStore;
  if (memStore && !self->_data)
  {
    v4 = [(NSMutableData *)memStore copy];
    data = self->_data;
    self->_data = v4;
  }

  v6 = self->_data;
  if (v6)
  {
    st_size = v6;
    goto LABEL_18;
  }

  fd = self->_fd;
  if (fd < 0)
  {
    goto LABEL_17;
  }

  memset(&v22, 0, sizeof(v22));
  if (fstat(fd, &v22) != -1)
  {
    st_size = v22.st_size;
    if (!v22.st_size)
    {
      v10 = objc_opt_new();
      goto LABEL_14;
    }

    v9 = mmap(0, v22.st_size, 1, 2, self->_fd, 0);
    if (v9 != -1)
    {
      v10 = dispatch_data_create(v9, st_size, 0, *MEMORY[0x1E69E9650]);
      st_size = v10;
LABEL_14:
      v16 = self->_data;
      self->_data = v10;

      goto LABEL_18;
    }

    v11 = sgLogHandle();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    v19 = *__error();
    v20 = __error();
    v21 = strerror(*v20);
    *buf = 67109378;
    v24 = v19;
    v25 = 2080;
    v26 = v21;
    v15 = "Could not mmap fd: [%i] %s";
    goto LABEL_22;
  }

  v11 = sgLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = *__error();
    v13 = __error();
    v14 = strerror(*v13);
    *buf = 67109378;
    v24 = v12;
    v25 = 2080;
    v26 = v14;
    v15 = "Could not stat fd: [%i] %s";
LABEL_22:
    _os_log_error_impl(&dword_1BA729000, v11, OS_LOG_TYPE_ERROR, v15, buf, 0x12u);
  }

LABEL_16:

LABEL_17:
  st_size = 0;
LABEL_18:
  pthread_mutex_unlock(&self->_lock);
  v17 = *MEMORY[0x1E69E9840];

  return st_size;
}

- (id)initBlank
{
  v5.receiver = self;
  v5.super_class = SGKeyValueCacheFile;
  v2 = [(SGKeyValueCacheFile *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_fd = -1;
    pthread_mutex_init(&v2->_lock, 0);
  }

  return v3;
}

- (SGKeyValueCacheFile)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SGKeyValueCacheFile *)self initBlank];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"data"];
    data = v5->_data;
    v5->_data = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SGKeyValueCacheFile *)self _map];
  [v4 encodeObject:v5 forKey:@"data"];
}

- (id)description
{
  v3 = objc_opt_new();
  v4 = [(SGKeyValueCacheFile *)self _map];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v3 appendFormat:@"%@ (size: %lu bytes)\n", v6, objc_msgSend(v4, "length")];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __34__SGKeyValueCacheFile_description__block_invoke;
  v9[3] = &unk_1E7EFB4D0;
  v7 = v3;
  v10 = v7;
  [(SGKeyValueCacheFile *)self enumerateRowsWithBlock:v9];

  return v7;
}

void __34__SGKeyValueCacheFile_description__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  if (*(a2 + 8) | *(a2 + 10))
  {
    [v4 appendString:@"  "];
    if (*a2 != -1)
    {
      [*(a1 + 32) appendFormat:@"[%llu] ", *a2];
    }

    v5 = *(a1 + 32);
    v6 = *(a2 + 8);
    v7 = *(a2 + 16);
    v8 = *(a2 + 24);
    v9 = 0;
    if (v6 && v7)
    {
      v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:v7 + 16 length:v6 encoding:4];
    }

    v10 = *(a2 + 8);
    v11 = *(a2 + 10);
    v12 = *(a2 + 16);
    v13 = *(a2 + 24);
    v14 = 0;
    if (v11 && v12)
    {
      v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:v12 + v10 + 16 length:v11 encoding:4];
    }

    [v5 appendFormat:@"'%@' => '%@'\n", v9, v14];
  }

  else
  {
    [v4 appendFormat:@"  [%llu] DELETE\n", *a2];
  }

  v15 = *(a2 + 24);
}

- (void)enumerateRowsWithBlock:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = [a1 _map];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 bytes];
      v7 = [v5 bytes];
      v19 = 0;
      v8 = v7 + [v5 length];
      while ((v8 - v6) >= 0x10)
      {
        v9 = v5;
        v10 = *(v6 + 8);
        v11 = *(v6 + 10);
        v12 = v11 + v10;
        if (v8 - (v6 + 16) < v11 + v10)
        {

          break;
        }

        v13 = *v6;
        v14 = v10;
        v15 = v11;
        v16 = 0;
        v17 = v6;
        v18 = v9;
        v3[2](v3, &v13, &v19);
        v6 += 16 + v12;
        if (v19 == 1)
        {
          break;
        }
      }
    }
  }
}

- (void)deleteValueByRecordIdSet:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (self->_fd < 0 && !self->_memStore)
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"SGKeyValueCacheFile.m" lineNumber:511 description:@"Cache is read-only"];
  }

  v6 = objc_opt_new();
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __48__SGKeyValueCacheFile_deleteValueByRecordIdSet___block_invoke;
  v28[3] = &unk_1E7EFB4A8;
  v7 = v5;
  v29 = v7;
  v8 = v6;
  v30 = v8;
  [(SGKeyValueCacheFile *)self enumerateRowsWithBlock:v28];
  if ([v8 count])
  {
    v9 = malloc_type_calloc([v8 count], 0x10uLL, 0x1000040D9A13B51uLL);
    if (!v9)
    {
      v23 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA18] reason:@"malloc failed" userInfo:0];
      objc_exception_throw(v23);
    }

    v10 = v9;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v11 = v8;
    v12 = [v11 countByEnumeratingWithState:&v24 objects:v31 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v25;
      v15 = v10;
      do
      {
        v16 = 0;
        v17 = v15;
        do
        {
          if (*v25 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v18 = [*(*(&v24 + 1) + 8 * v16) longLongValue];
          v15 = v17 + 2;
          ++v16;
          *v17 = v18;
          v17[1] = 0;
          v17 += 2;
        }

        while (v13 != v16);
        v13 = [v11 countByEnumeratingWithState:&v24 objects:v31 count:16];
      }

      while (v13);
    }

    pthread_mutex_lock(&self->_lock);
    memStore = self->_memStore;
    if (memStore)
    {
      -[NSMutableData appendBytes:length:](memStore, "appendBytes:length:", v10, 16 * [v11 count]);
    }

    else
    {
      write(self->_fd, v10, 16 * [v11 count]);
    }

    data = self->_data;
    self->_data = 0;

    pthread_mutex_unlock(&self->_lock);
    free(v10);
  }

  v21 = *MEMORY[0x1E69E9840];
}

void __48__SGKeyValueCacheFile_deleteValueByRecordIdSet___block_invoke(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 32);
  v5 = [SGRecordId recordIdWithInternalEntityId:*a2];
  LODWORD(v4) = [v4 containsObject:v5];

  if (v4)
  {
    v6 = *(a1 + 40);
    v7 = *a2;
    if (*(a2 + 4) | *(a2 + 5))
    {
      v8 = [MEMORY[0x1E696AD98] numberWithLongLong:v7];
      [v6 addObject:v8];
    }

    else
    {
      v8 = [MEMORY[0x1E696AD98] numberWithLongLong:v7];
      [v6 removeObject:v8];
    }
  }

  v9 = a2[3];
}

- (void)deleteValueByRecordId:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_fd < 0 && !self->_memStore)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"SGKeyValueCacheFile.m" lineNumber:486 description:@"Cache is read-only"];

    if (v6)
    {
      goto LABEL_4;
    }
  }

  else if (v5)
  {
LABEL_4:
    v7 = [v6 internalEntityId];
    goto LABEL_7;
  }

  v7 = -1;
LABEL_7:
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __45__SGKeyValueCacheFile_deleteValueByRecordId___block_invoke;
  v12[3] = &unk_1E7EFB480;
  v12[4] = &v13;
  v12[5] = v7;
  [(SGKeyValueCacheFile *)self enumerateRowsWithBlock:v12];
  if (v14[3])
  {
    v11[0] = v7;
    v11[1] = 0;
    pthread_mutex_lock(&self->_lock);
    memStore = self->_memStore;
    if (memStore)
    {
      [(NSMutableData *)memStore appendBytes:v11 length:16];
    }

    else
    {
      write(self->_fd, v11, 0x10uLL);
    }

    data = self->_data;
    self->_data = 0;

    pthread_mutex_unlock(&self->_lock);
  }

  _Block_object_dispose(&v13, 8);
}

void __45__SGKeyValueCacheFile_deleteValueByRecordId___block_invoke(uint64_t a1, uint64_t a2)
{
  if (*a2 == *(a1 + 40))
  {
    *(*(*(a1 + 32) + 8) + 24) = (*(a2 + 8) | *(a2 + 10)) != 0;
  }
}

- (void)setValueIfNotPresentWithDict:(id)a3 fromRecordId:(id)a4
{
  v50 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (self->_fd < 0 && !self->_memStore)
  {
    v32 = [MEMORY[0x1E696AAA8] currentHandler];
    [v32 handleFailureInMethod:a2 object:self file:@"SGKeyValueCacheFile.m" lineNumber:434 description:@"Cache is read-only"];
  }

  v9 = objc_opt_new();
  v10 = [v8 numericValue];
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __65__SGKeyValueCacheFile_setValueIfNotPresentWithDict_fromRecordId___block_invoke;
  v45[3] = &unk_1E7EFB430;
  v47 = v10;
  v11 = v9;
  v46 = v11;
  v34 = self;
  [(SGKeyValueCacheFile *)self enumerateRowsWithBlock:v45];
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v12 = v11;
  v13 = [v12 countByEnumeratingWithState:&v41 objects:v49 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    v16 = *v42;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v42 != v16)
        {
          objc_enumerationMutation(v12);
        }

        v18 = [v7 objectForKeyedSubscript:*(*(&v41 + 1) + 8 * i)];
        v19 = v18 == 0;

        v15 |= v19;
      }

      v14 = [v12 countByEnumeratingWithState:&v41 objects:v49 count:16];
    }

    while (v14);

    if (v15)
    {
      v20 = v7;
      v21 = v34;
      [(SGKeyValueCacheFile *)v34 deleteValueByRecordId:v8];
LABEL_25:
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __65__SGKeyValueCacheFile_setValueIfNotPresentWithDict_fromRecordId___block_invoke_2;
      v35[3] = &unk_1E7EFB458;
      v35[4] = v21;
      v36 = v8;
      [v20 enumerateKeysAndObjectsUsingBlock:v35];

      goto LABEL_26;
    }
  }

  else
  {
  }

  v33 = v8;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v22 = v7;
  v23 = [v22 countByEnumeratingWithState:&v37 objects:v48 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v38;
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v38 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v37 + 1) + 8 * j);
        v28 = [v12 objectForKeyedSubscript:{v27, v33}];
        v29 = [v22 objectForKeyedSubscript:v27];
        if ([v28 isEqual:v29])
        {
          [v12 setObject:0 forKeyedSubscript:v27];
        }

        else
        {
          v30 = [v22 objectForKeyedSubscript:v27];
          [v12 setObject:v30 forKeyedSubscript:v27];
        }
      }

      v24 = [v22 countByEnumeratingWithState:&v37 objects:v48 count:16];
    }

    while (v24);
  }

  v20 = v12;
  v8 = v33;
  v21 = v34;
  if ([v20 count])
  {
    goto LABEL_25;
  }

LABEL_26:

  v31 = *MEMORY[0x1E69E9840];
}

void __65__SGKeyValueCacheFile_setValueIfNotPresentWithDict_fromRecordId___block_invoke(uint64_t a1, uint64_t a2)
{
  if (*a2 != *(a1 + 40))
  {
    goto LABEL_19;
  }

  v4 = *(a2 + 8);
  if (!*(a2 + 8))
  {
    [*(a1 + 32) removeAllObjects];
    goto LABEL_19;
  }

  v5 = *(a2 + 10);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = v7;
  if (v5)
  {
    v9 = v6 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
  }

  else
  {
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:v6 + v4 + 16 length:v5 encoding:4];

    if (v10)
    {
      v11 = 0;
      v12 = v10;
      goto LABEL_13;
    }
  }

  v12 = [MEMORY[0x1E695DFB0] null];
  v10 = 0;
  v11 = 1;
LABEL_13:
  v13 = *(a1 + 32);
  v14 = *(a2 + 8);
  v15 = *(a2 + 16);
  v16 = *(a2 + 24);
  v17 = 0;
  if (v14 && v15)
  {
    v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:v15 + 16 length:v14 encoding:4];
  }

  [v13 setObject:v12 forKeyedSubscript:v17];
  if (v11)
  {
  }

LABEL_19:
  v18 = *(a2 + 24);
}

void __65__SGKeyValueCacheFile_setValueIfNotPresentWithDict_fromRecordId___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v9 = a3;
  v5 = MEMORY[0x1E695DFB0];
  v6 = a2;
  v7 = [v5 null];

  if (v7 == v9)
  {
    v8 = 0;
  }

  else
  {
    v8 = v9;
  }

  [*(a1 + 32) setValue:v8 forKey:v6 fromRecordId:*(a1 + 40)];
}

- (void)setValueIfNotPresent:(id)a3 forKey:(id)a4 fromRecordId:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 UTF8String];
  v13 = 0;
  v14 = &v13;
  v15 = 0x5012000000;
  v16 = __Block_byref_object_copy__23;
  v17 = __Block_byref_object_dispose__24;
  v18 = "0";
  v19 = xmmword_1BA7C0E18;
  v20 = unk_1BA7C0E28;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __64__SGKeyValueCacheFile_setValueIfNotPresent_forKey_fromRecordId___block_invoke;
  v12[3] = &unk_1E7EFB408;
  v12[4] = &v13;
  v12[5] = v11;
  v12[6] = strlen(v11);
  [(SGKeyValueCacheFile *)self enumerateRowsWithBlock:v12];
  if (!v14[8])
  {
    [(SGKeyValueCacheFile *)self setValue:v8 forKey:v9 fromRecordId:v10];
  }

  _Block_object_dispose(&v13, 8);
}

void __64__SGKeyValueCacheFile_setValueIfNotPresent_forKey_fromRecordId___block_invoke(uint64_t a1, __int128 *a2)
{
  v4 = *(a2 + 4);
  if (!*(a2 + 2))
  {
    v5 = *(*(a1 + 32) + 8);
    if (*a2 == v5[6])
    {
      v5[6] = -1;
      v5[7] = 0;
      v6 = v5[9];
      v5[8] = 0;
      v5[9] = 0;

      v4 = *(a2 + 4);
    }

    else
    {
      v4 = 0;
    }
  }

  v7 = *(a1 + 48);
  if (v7 == v4 && !memcmp((*(a2 + 2) + 16), *(a1 + 40), v7))
  {
    v8 = *(*(a1 + 32) + 8);
    v9 = *a2;
    *(v8 + 64) = *(a2 + 2);
    *(v8 + 48) = v9;
    objc_storeStrong((v8 + 72), *(a2 + 3));
  }

  v10 = *(a2 + 3);
}

- (void)setValue:(id)a3 forKey:(id)a4 fromRecordId:(id)a5
{
  v33 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (self->_fd < 0 && !self->_memStore)
  {
    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"SGKeyValueCacheFile.m" lineNumber:377 description:@"Cache is read-only"];

    if (v10)
    {
      goto LABEL_4;
    }
  }

  else if (v10)
  {
    goto LABEL_4;
  }

  v25 = [MEMORY[0x1E696AAA8] currentHandler];
  [v25 handleFailureInMethod:a2 object:self file:@"SGKeyValueCacheFile.m" lineNumber:378 description:{@"Invalid parameter not satisfying: %@", @"key"}];

LABEL_4:
  if (![v10 length])
  {
    goto LABEL_24;
  }

  v12 = [v10 UTF8String];
  v13 = [v9 UTF8String];
  v14 = strlen(v12);
  if (!v13)
  {
    v15 = 0;
    if (v12)
    {
      goto LABEL_7;
    }

LABEL_14:
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"SGKeyValueCacheFile.m" lineNumber:386 description:{@"Invalid parameter not satisfying: %@", @"keyUtf8"}];

    goto LABEL_7;
  }

  v15 = strlen(v13);
  if (!v12)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (v14 >= 0xFFFF)
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"SGKeyValueCacheFile.m" lineNumber:387 description:{@"Invalid parameter not satisfying: %@", @"keyLen < UINT16_MAX"}];
  }

  if (v15 >= 0xFFFF)
  {
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"SGKeyValueCacheFile.m" lineNumber:388 description:{@"Invalid parameter not satisfying: %@", @"valLen < UINT16_MAX"}];
  }

  v27 = 0;
  if (v11)
  {
    v16 = [v11 internalEntityId];
  }

  else
  {
    v16 = -1;
  }

  v26 = v16;
  LOWORD(v27) = v14;
  WORD1(v27) = v15;
  memStore = self->_memStore;
  if (memStore)
  {
    [(NSMutableData *)memStore appendBytes:&v26 length:16];
    [(NSMutableData *)self->_memStore appendBytes:v12 length:v14];
    if (v15)
    {
      [(NSMutableData *)self->_memStore appendBytes:v13 length:v15];
    }
  }

  else
  {
    v28.iov_base = &v26;
    v28.iov_len = 16;
    v29 = v12;
    v30 = v14;
    v31 = v13;
    v32 = v15;
    pthread_mutex_lock(&self->_lock);
    if (v15)
    {
      v19 = 3;
    }

    else
    {
      v19 = 2;
    }

    writev(self->_fd, &v28, v19);
  }

  data = self->_data;
  self->_data = 0;

  pthread_mutex_unlock(&self->_lock);
LABEL_24:

  v21 = *MEMORY[0x1E69E9840];
}

- (id)valueForKey:(id)a3 found:(BOOL *)a4
{
  v7 = a3;
  if (!v7)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"SGKeyValueCacheFile.m" lineNumber:341 description:{@"Invalid parameter not satisfying: %@", @"key"}];
  }

  if ([v7 length])
  {
    v8 = [v7 UTF8String];
    v21 = 0;
    v22 = &v21;
    v23 = 0x5012000000;
    v24 = __Block_byref_object_copy__23;
    v25 = __Block_byref_object_dispose__24;
    v26 = "0";
    v27 = xmmword_1BA7C0E18;
    v28 = unk_1BA7C0E28;
    v18[0] = 0;
    v18[1] = v18;
    v18[2] = 0x5012000000;
    v18[3] = __Block_byref_object_copy__23;
    v18[4] = __Block_byref_object_dispose__24;
    v18[5] = "0";
    v19 = xmmword_1BA7C0E18;
    v20 = unk_1BA7C0E28;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __41__SGKeyValueCacheFile_valueForKey_found___block_invoke;
    v16[3] = &unk_1E7EFB3E0;
    v16[4] = v18;
    v16[5] = &v21;
    v16[6] = v8;
    v17 = strlen(v8);
    [(SGKeyValueCacheFile *)self enumerateRowsWithBlock:v16];
    v9 = v22;
    if (a4)
    {
      *a4 = v22[8] != 0;
    }

    v10 = v9[8];
    if (v10)
    {
      v11 = *(v9 + 28);
      v12 = *(v9 + 29);
      v13 = v9[9];
      if (v12)
      {
        v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:v10 + v11 + 16 length:v12 encoding:4];
      }
    }

    else
    {
      v12 = 0;
    }

    _Block_object_dispose(v18, 8);

    _Block_object_dispose(&v21, 8);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void __41__SGKeyValueCacheFile_valueForKey_found___block_invoke(uint64_t a1, uint64_t *a2)
{
  if (!(*(a2 + 4) | *(a2 + 5)))
  {
    v4 = *a2;
    v5 = *(*(a1 + 32) + 8);
    if (*a2 == v5[6])
    {
      v5[6] = -1;
      v5[7] = 0;
      v6 = v5[9];
      v5[8] = 0;
      v5[9] = 0;

      v4 = *a2;
    }

    v7 = *(*(a1 + 40) + 8);
    if (v4 == *(v7 + 48))
    {
      v8 = *(*(a1 + 32) + 8);
      v9 = *(v8 + 48);
      *(v7 + 64) = *(v8 + 64);
      *(v7 + 48) = v9;
      objc_storeStrong((v7 + 72), *(v8 + 72));
      v10 = *(*(a1 + 32) + 8);
      v10[6] = -1;
      v10[7] = 0;
      v11 = v10[9];
      v10[8] = 0;
      v10[9] = 0;
    }
  }

  v12 = *(a2 + 4);
  if (v12 == *(a1 + 56) && !memcmp((a2[2] + 16), *(a1 + 48), v12))
  {
    if (*a2 == -1)
    {
      v13 = *(*(a1 + 40) + 8);
      if (*(v13 + 48) != -1)
      {
        v14 = *(*(a1 + 32) + 8);
        v15 = *(v13 + 48);
        *(v14 + 64) = *(v13 + 64);
        *(v14 + 48) = v15;
        objc_storeStrong((v14 + 72), *(v13 + 72));
      }
    }

    v16 = *(*(a1 + 40) + 8);
    v17 = *a2;
    *(v16 + 64) = a2[2];
    *(v16 + 48) = v17;
    objc_storeStrong((v16 + 72), a2[3]);
  }

  v18 = a2[3];
}

- (void)commitTemporaryFile
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = self->_other;
  v4 = v3;
  if (!v3)
  {
    v7 = sgLogHandle();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    LOWORD(v29) = 0;
    v8 = "Could not commit cache file as it is not temporary";
LABEL_25:
    v27 = v7;
    v28 = 2;
    goto LABEL_26;
  }

  pthread_mutex_lock(&v3->_lock);
  memStore = self->_memStore;
  if (memStore)
  {
    objc_storeStrong(&v4->_memStore, memStore);
LABEL_4:
    data = v4->_data;
    v4->_data = 0;

    goto LABEL_15;
  }

  if (!self->_tmpDir || (path = self->_path) == 0)
  {
    v7 = sgLogHandle();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    LOWORD(v29) = 0;
    v8 = "Could not commit cache file as it is not temporary";
    goto LABEL_25;
  }

  v10 = [(NSString *)path UTF8String];
  v11 = [(NSString *)v4->_path UTF8String];
  rename(v10, v11, v12);
  if (v13 != -1)
  {
    fd = v4->_fd;
    if (fd >= 1)
    {
      close(fd);
    }

    v4->_fd = self->_fd;
    self->_fd = -1;
    goto LABEL_4;
  }

  v7 = sgLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v23 = v4->_path;
    v24 = *__error();
    v25 = __error();
    v26 = strerror(*v25);
    v29 = 138412802;
    v30 = v23;
    v31 = 1024;
    v32 = v24;
    v33 = 2080;
    v34 = v26;
    v8 = "Could not overwrite %@: [%i] %s";
    v27 = v7;
    v28 = 28;
LABEL_26:
    _os_log_error_impl(&dword_1BA729000, v27, OS_LOG_TYPE_ERROR, v8, &v29, v28);
  }

LABEL_14:

LABEL_15:
  tmpDir = self->_tmpDir;
  if (tmpDir)
  {
    v16 = [MEMORY[0x1E696AC08] defaultManager];
    [v16 removeItemAtPath:self->_tmpDir error:0];

    tmpDir = self->_tmpDir;
  }

  self->_tmpDir = 0;

  v17 = self->_fd;
  if (v17 >= 1)
  {
    close(v17);
  }

  self->_fd = -1;
  v18 = self->_path;
  self->_path = 0;

  other = self->_other;
  self->_other = 0;

  v20 = self->_data;
  self->_data = 0;

  v21 = self->_memStore;
  self->_memStore = 0;

  if (v4)
  {
    pthread_mutex_unlock(&v4->_lock);
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  pthread_mutex_destroy(&self->_lock);
  fd = self->_fd;
  if ((fd & 0x80000000) == 0)
  {
    close(fd);
  }

  if (self->_tmpDir)
  {
    v4 = [MEMORY[0x1E696AC08] defaultManager];
    [v4 removeItemAtPath:self->_tmpDir error:0];
  }

  v5.receiver = self;
  v5.super_class = SGKeyValueCacheFile;
  [(SGKeyValueCacheFile *)&v5 dealloc];
}

- (id)initInMemory
{
  v2 = [(SGKeyValueCacheFile *)self initBlank];
  if (v2)
  {
    v3 = objc_opt_new();
    v4 = v2[13];
    v2[13] = v3;
  }

  return v2;
}

- (id)initTemporaryForOverwritingCache:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (v5[13])
  {
    v7 = [(SGKeyValueCacheFile *)self initInMemory];
    v8 = v7;
    if (v7)
    {
      objc_storeStrong(v7 + 14, a3);
    }

    v9 = v8;
    v10 = v9;
  }

  else if (v5[11] && *(v5 + 20) > 0)
  {
    v11 = [MEMORY[0x1E695DFF8] fileURLWithPath:? isDirectory:?];
    v12 = [MEMORY[0x1E696AC08] defaultManager];
    v30 = 0;
    v13 = [v12 URLForDirectory:99 inDomain:1 appropriateForURL:v11 create:1 error:&v30];
    v14 = v30;
    v15 = [v13 path];

    if (v15)
    {
      v16 = [v6[11] lastPathComponent];
      v17 = [v15 stringByAppendingPathComponent:v16];

      v18 = open_dprotected_np([v17 UTF8String], 2562, 3, 0, 384);
      if ((v18 & 0x80000000) != 0)
      {
        v23 = sgLogHandle();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v27 = *__error();
          v28 = __error();
          v29 = strerror(*v28);
          *buf = 138412802;
          v32 = v17;
          v33 = 1024;
          v34 = v27;
          v35 = 2080;
          v36 = v29;
          _os_log_error_impl(&dword_1BA729000, v23, OS_LOG_TYPE_ERROR, "Could not open temporary cache file %@: [%i] %s", buf, 0x1Cu);
        }

        v24 = [MEMORY[0x1E696AC08] defaultManager];
        [v24 removeItemAtPath:v15 error:0];

        v9 = [(SGKeyValueCacheFile *)self initBlank];
        v10 = 0;
      }

      else
      {
        v19 = [(SGKeyValueCacheFile *)self initWithFileDescriptor:v18];
        p_isa = &v19->super.isa;
        if (v19)
        {
          objc_storeStrong(&v19->_tmpDir, v15);
          objc_storeStrong(p_isa + 11, v17);
          objc_storeStrong(p_isa + 14, a3);
        }

        v9 = p_isa;
        v10 = v9;
      }
    }

    else
    {
      v22 = sgLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v32 = v14;
        _os_log_error_impl(&dword_1BA729000, v22, OS_LOG_TYPE_ERROR, "Could not create temporary directory: %@", buf, 0xCu);
      }

      v9 = [(SGKeyValueCacheFile *)self initBlank];
      v10 = 0;
    }
  }

  else
  {
    v21 = sgLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v32 = v6;
      _os_log_error_impl(&dword_1BA729000, v21, OS_LOG_TYPE_ERROR, "Could not create temporary directory for readonly target: %@", buf, 0xCu);
    }

    v9 = [(SGKeyValueCacheFile *)self initBlank];
    v10 = 0;
  }

  v25 = *MEMORY[0x1E69E9840];
  return v10;
}

- (SGKeyValueCacheFile)initWithPath:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = open_dprotected_np([v5 UTF8String], 522, 3, 0, 384);
  if ((v6 & 0x80000000) != 0)
  {
    v11 = sgLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v14 = *__error();
      v15 = __error();
      v16 = strerror(*v15);
      *buf = 138412802;
      v18 = v5;
      v19 = 1024;
      v20 = v14;
      v21 = 2080;
      v22 = v16;
      _os_log_error_impl(&dword_1BA729000, v11, OS_LOG_TYPE_ERROR, "Could not open cache file %@: [%i] %s", buf, 0x1Cu);
    }

    v9 = [(SGKeyValueCacheFile *)self initBlank];
    v10 = 0;
  }

  else
  {
    v7 = [(SGKeyValueCacheFile *)self initWithFileDescriptor:v6];
    v8 = v7;
    if (v7)
    {
      objc_storeStrong(&v7->_path, a3);
    }

    v9 = v8;
    v10 = v9;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v10;
}

- (SGKeyValueCacheFile)initWithFileDescriptor:(int)a3
{
  result = [(SGKeyValueCacheFile *)self initBlank];
  if (result)
  {
    result->_fd = a3;
  }

  return result;
}

+ (id)fullNameForEncodedContact:(id)a3
{
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = [v3 substringFromIndex:1];
  objc_autoreleasePoolPop(v4);

  return v5;
}

+ (id)encodedStringForFullName:(id)a3
{
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@" %@", v3];
  objc_autoreleasePoolPop(v4);

  return v5;
}

+ (void)clearCacheAtPath:(id)a3
{
  v4 = a3;
  v5 = [a1 pathToCache];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__SGKeyValueCacheFile_clearCacheAtPath___block_invoke;
  v7[3] = &unk_1E7EFC848;
  v8 = v4;
  v6 = v4;
  [v5 runWithLockAcquired:v7];
}

+ (id)keyValueCacheForPath:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__1938;
  v17 = __Block_byref_object_dispose__1939;
  v18 = 0;
  v5 = [a1 pathToCache];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __44__SGKeyValueCacheFile_keyValueCacheForPath___block_invoke;
  v9[3] = &unk_1E7EFB3B8;
  v6 = v4;
  v10 = v6;
  v11 = &v13;
  v12 = a1;
  [v5 runWithLockAcquired:v9];
  v7 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v7;
}

void __44__SGKeyValueCacheFile_keyValueCacheForPath___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [*(a1 + 32) copy];
  v4 = [v10 objectForKeyedSubscript:v3];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v7 = [objc_alloc(*(a1 + 48)) initWithPath:v3];
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    [v10 setObject:*(*(*(a1 + 40) + 8) + 40) forKeyedSubscript:v3];
  }
}

+ (id)pathToCache
{
  if (pathToCache__pasOnceToken2 != -1)
  {
    dispatch_once(&pathToCache__pasOnceToken2, &__block_literal_global_1940);
  }

  v3 = pathToCache__pasExprOnceResult;

  return v3;
}

void __34__SGKeyValueCacheFile_pathToCache__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_alloc(MEMORY[0x1E69C5D60]);
  v2 = objc_opt_new();
  v3 = [v1 initWithGuardedData:v2];
  v4 = pathToCache__pasExprOnceResult;
  pathToCache__pasExprOnceResult = v3;

  objc_autoreleasePoolPop(v0);
}

@end