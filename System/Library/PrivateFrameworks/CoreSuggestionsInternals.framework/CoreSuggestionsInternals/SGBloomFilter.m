@interface SGBloomFilter
- (BOOL)exists:(id)a3;
- (SGBloomFilter)initWithDirectory:(id)a3 name:(id)a4;
- (SGBloomFilter)initWithHead:(id)a3 tail:(id)a4;
- (SGBloomFilter)initWithInMemoryStorage;
- (SGBloomFilter)initWithInMemoryStorageSparse;
- (id)counts;
- (void)_rotate;
- (void)_rotateIfNecessary;
- (void)add:(id)a3;
- (void)addAsync:(id)a3;
- (void)forceRotate;
@end

@implementation SGBloomFilter

- (id)counts
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__12806;
  v10 = __Block_byref_object_dispose__12807;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __23__SGBloomFilter_counts__block_invoke;
  v5[3] = &unk_2789561D0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __23__SGBloomFilter_counts__block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277D42648]);
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(*(*(a1 + 32) + 8), "count")}];
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(*(*(a1 + 32) + 16), "count")}];
  v4 = [v2 initWithFirst:v7 second:v3];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (BOOL)exists:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v9 = 0;
  v10 = 0;
  SGMurmurhashString(a3, 12345, &v9);
  v4 = v9;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __24__SGBloomFilter_exists___block_invoke;
  v8[3] = &unk_278954E28;
  v8[4] = self;
  v8[5] = &v9;
  v8[6] = v4;
  dispatch_sync(queue, v8);
  LOBYTE(self) = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  v6 = *MEMORY[0x277D85DE8];
  return self;
}

uint64_t __24__SGBloomFilter_exists___block_invoke(void *a1)
{
  if ([*(a1[4] + 8) exists:a1[6]])
  {
    result = 1;
  }

  else
  {
    result = [*(a1[4] + 16) exists:a1[6]];
  }

  *(*(a1[5] + 8) + 24) = result;
  return result;
}

- (void)addAsync:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __26__SGBloomFilter_addAsync___block_invoke;
  v7[3] = &unk_278955830;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

uint64_t __26__SGBloomFilter_addAsync___block_invoke(uint64_t a1)
{
  v7[2] = *MEMORY[0x277D85DE8];
  [*(a1 + 32) _rotateIfNecessary];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 8);
  v7[0] = 0;
  v7[1] = 0;
  SGMurmurhashString(v2, 12345, v7);
  v4 = v7[0];
  v5 = *MEMORY[0x277D85DE8];

  return [v3 add:v4];
}

- (void)add:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __21__SGBloomFilter_add___block_invoke;
  v7[3] = &unk_278955830;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

uint64_t __21__SGBloomFilter_add___block_invoke(uint64_t a1)
{
  v7[2] = *MEMORY[0x277D85DE8];
  [*(a1 + 32) _rotateIfNecessary];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 8);
  v7[0] = 0;
  v7[1] = 0;
  SGMurmurhashString(v2, 12345, v7);
  v4 = v7[0];
  v5 = *MEMORY[0x277D85DE8];

  return [v3 add:v4];
}

- (void)forceRotate
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __28__SGBloomFilter_forceRotate__block_invoke;
  block[3] = &unk_278954A30;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)_rotate
{
  v42 = *MEMORY[0x277D85DE8];
  v3 = sgLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    LOWORD(v36) = 0;
    _os_log_impl(&dword_231E60000, v3, OS_LOG_TYPE_INFO, "Rotating bloom filters", &v36, 2u);
  }

  head = self->_head;
  v5 = 0x278948000uLL;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v7 = self->_head;
  if ((isKindOfClass & 1) == 0)
  {
    objc_storeStrong(&self->_tail, v7);
    v19 = self->_head;
    objc_opt_class();
    v20 = objc_opt_new();
    v8 = self->_head;
    self->_head = v20;
    goto LABEL_21;
  }

  v8 = v7;
  v9 = self->_tail;
  v10 = [(SGBloomFilterChunk *)v8 path];
  v11 = [(SGBloomFilterChunk *)v9 path];
  v12 = [v10 hasSuffix:@".bf-head"];
  if (v12)
  {
    v13 = v9;
    v14 = objc_autoreleasePoolPush();
    v15 = [v10 substringToIndex:{objc_msgSend(v10, "length") - 8}];
    v16 = [v15 stringByAppendingString:@".bf2-head"];
    v17 = v10;
    v18 = v11;
  }

  else
  {
    if (![v11 hasSuffix:@".bf-tail"])
    {
      v22 = 0;
      v18 = v11;
      v21 = v10;
      goto LABEL_11;
    }

    v13 = v9;
    v14 = objc_autoreleasePoolPush();
    v15 = [v11 substringToIndex:{objc_msgSend(v11, "length") - 8}];
    v18 = [v15 stringByAppendingString:@".bf2-tail"];
    v17 = v11;
    v16 = v10;
  }

  objc_autoreleasePoolPop(v14);
  v9 = v13;
  v5 = 0x278948000;
  v21 = v16;
  v22 = v12 ^ 1;
LABEL_11:
  [(SGBloomFilterChunk *)v8 close];
  [(SGBloomFilterChunk *)v9 close];
  v23 = [v10 UTF8String];
  v24 = [v18 UTF8String];
  rename(v23, v24, v25);
  if (v26)
  {
    v27 = sgLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v34 = *__error();
      v36 = 138412802;
      v37 = v21;
      v38 = 2112;
      v39 = v18;
      v40 = 1024;
      v41 = v34;
      _os_log_error_impl(&dword_231E60000, v27, OS_LOG_TYPE_ERROR, "Could not move %@ to %@: errno=%i", &v36, 0x1Cu);
    }
  }

  if (v22 && unlink([v11 UTF8String]))
  {
    v28 = sgLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v35 = *__error();
      v36 = 138412546;
      v37 = v11;
      v38 = 1024;
      LODWORD(v39) = v35;
      _os_log_error_impl(&dword_231E60000, v28, OS_LOG_TYPE_ERROR, "Could not unlink %@: errno=%i", &v36, 0x12u);
    }
  }

  v29 = [objc_alloc(*(v5 + 2224)) initWithPath:v21];
  v30 = self->_head;
  self->_head = v29;

  v31 = [objc_alloc(*(v5 + 2224)) initWithPath:v18];
  tail = self->_tail;
  self->_tail = v31;

LABEL_21:
  v33 = *MEMORY[0x277D85DE8];
}

- (void)_rotateIfNecessary
{
  if ([(SGBloomFilterChunk *)self->_head count]>> 3 >= 0xC35)
  {

    [(SGBloomFilter *)self _rotate];
  }
}

- (SGBloomFilter)initWithDirectory:(id)a3 name:(id)a4
{
  v69 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v52 = [MEMORY[0x277CCA890] currentHandler];
    [v52 handleFailureInMethod:a2 object:self file:@"SGBloomFilter.m" lineNumber:69 description:{@"Invalid parameter not satisfying: %@", @"dirPath"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v53 = [MEMORY[0x277CCA890] currentHandler];
  [v53 handleFailureInMethod:a2 object:self file:@"SGBloomFilter.m" lineNumber:70 description:{@"Invalid parameter not satisfying: %@", @"name"}];

LABEL_3:
  if (initWithDirectory_name__onceToken != -1)
  {
    dispatch_once(&initWithDirectory_name__onceToken, &__block_literal_global_12874);
  }

  v10 = [objc_alloc(MEMORY[0x277D42648]) initWithFirst:v7 second:v9];
  pthread_mutex_lock(&initWithDirectory_name__lock);
  v11 = [initWithDirectory_name__instances objectForKey:v10];
  if (!v11)
  {
    v13 = objc_autoreleasePoolPush();
    v14 = [MEMORY[0x277CCAA00] defaultManager];
    v64 = 0;
    v15 = [v14 contentsOfDirectoryAtPath:v7 error:&v64];
    v16 = v64;

    if (!v15)
    {
      v35 = sgLogHandle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v66 = v7;
        v67 = 2112;
        v68 = v16;
        _os_log_error_impl(&dword_231E60000, v35, OS_LOG_TYPE_ERROR, "Error listing contents of directory %@: %@", buf, 0x16u);
      }

      v12 = 0;
      goto LABEL_37;
    }

    v58 = v13;
    v54 = self;
    v17 = v16;
    v18 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v15];
    v19 = [v9 stringByAppendingString:@".bf-head"];
    v20 = [v9 stringByAppendingString:@".bf-tail"];
    v21 = [v9 stringByAppendingString:@".bf2-head"];
    v22 = [v9 stringByAppendingString:@".bf2-tail"];
    v63 = v19;
    v61 = v21;
    if ([v18 containsObject:v19])
    {
      v23 = v19;
    }

    else
    {
      v23 = v21;
    }

    v24 = v22;
    v25 = v23;
    if ([v18 containsObject:v20])
    {
      v26 = v20;
    }

    else
    {
      v26 = v24;
    }

    v27 = v26;
    v60 = v20;
    v59 = v18;
    v55 = v24;
    if ([v18 containsObject:v20])
    {
      v28 = [v18 containsObject:v24];
      v29 = v24;
      v30 = v17;
      if (v28)
      {
        v62 = v29;

        v31 = [v7 stringByAppendingPathComponent:v20];
        v32 = unlink([v31 UTF8String]);

        v33 = v54;
        if (v32)
        {
          v34 = sgLogHandle();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            v48 = [v7 stringByAppendingPathComponent:v20];
            v49 = *__error();
            *buf = 138412546;
            v66 = v48;
            v67 = 1024;
            LODWORD(v68) = v49;
            _os_log_error_impl(&dword_231E60000, v34, OS_LOG_TYPE_ERROR, "Could not unlink %@ while rotating: errno=%i", buf, 0x12u);
          }
        }

        v18 = v59;
        goto LABEL_27;
      }

      v62 = v27;
    }

    else
    {
      v62 = v27;
      v30 = v17;
    }

    v33 = v54;
LABEL_27:
    v56 = v30;
    v57 = v15;
    if ([v18 containsObject:v63]&& [v18 containsObject:v61])
    {
      v36 = v61;

      v37 = [v7 stringByAppendingPathComponent:v63];
      v38 = unlink([v37 UTF8String]);

      if (v38)
      {
        v39 = sgLogHandle();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          v50 = [v7 stringByAppendingPathComponent:v63];
          v51 = *__error();
          *buf = 138412546;
          v66 = v50;
          v67 = 1024;
          LODWORD(v68) = v51;
          _os_log_error_impl(&dword_231E60000, v39, OS_LOG_TYPE_ERROR, "Could not unlink %@ while rotating: errno=%i", buf, 0x12u);
        }
      }
    }

    else
    {
      v36 = v25;
    }

    v40 = [SGBloomFilterChunkMmap alloc];
    v41 = [v7 stringByAppendingPathComponent:v36];
    v42 = [(SGBloomFilterChunkMmap *)v40 initWithPath:v41];
    v43 = [SGBloomFilterChunkMmap alloc];
    v44 = [v7 stringByAppendingPathComponent:v62];
    v45 = [(SGBloomFilterChunkMmap *)v43 initWithPath:v44];
    v12 = [(SGBloomFilter *)v33 initWithHead:v42 tail:v45];

    if ([v36 isEqualToString:v63])
    {
      [(SGBloomFilter *)v12 _rotate];
    }

    [initWithDirectory_name__instances setObject:v12 forKey:v10];

    self = v12;
    v15 = v57;
    v13 = v58;
    v16 = v56;
    v35 = v59;
LABEL_37:

    objc_autoreleasePoolPop(v13);
    goto LABEL_38;
  }

  v12 = v11;
LABEL_38:
  pthread_mutex_unlock(&initWithDirectory_name__lock);

  v46 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t __40__SGBloomFilter_initWithDirectory_name___block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:0 valueOptions:5 capacity:1];
  v1 = initWithDirectory_name__instances;
  initWithDirectory_name__instances = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (SGBloomFilter)initWithInMemoryStorageSparse
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = [(SGBloomFilter *)self initWithHead:v3 tail:v4];

  return v5;
}

- (SGBloomFilter)initWithInMemoryStorage
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = [(SGBloomFilter *)self initWithHead:v3 tail:v4];

  return v5;
}

- (SGBloomFilter)initWithHead:(id)a3 tail:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = SGBloomFilter;
  v9 = [(SGBloomFilter *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_head, a3);
    objc_storeStrong(&v10->_tail, a4);
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("com.apple.suggestions.SGBloomFilter", v11);
    queue = v10->_queue;
    v10->_queue = v12;
  }

  return v10;
}

@end