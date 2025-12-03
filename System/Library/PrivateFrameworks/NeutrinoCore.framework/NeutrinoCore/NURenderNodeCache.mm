@interface NURenderNodeCache
+ (NURenderNodeCache)sharedInstance;
- (NURenderNodeCache)init;
- (id)cachedNodeForNode:(id)node;
- (id)debugDescription;
- (id)retrieveAndCacheNode:(id)node;
- (unint64_t)unhitCacheEntriesCount;
- (void)_mediaServicesWereReset:(id)reset;
- (void)addNode:(id)node;
- (void)dealloc;
@end

@implementation NURenderNodeCache

- (void)_mediaServicesWereReset:(id)reset
{
  v9 = *MEMORY[0x1E69E9840];
  userInfo = [reset userInfo];
  v4 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E6987368]];

  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_58);
  }

  v5 = _NULogger;
  if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
  {
    v7 = 138543362;
    v8 = v4;
    _os_log_error_impl(&dword_1C0184000, v5, OS_LOG_TYPE_ERROR, "NURenderNodeCache: received AVAssetMediaServicesWereResetNotification. AVObjects are invalid! Error: %{public}@", &v7, 0xCu);
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_58);
    }
  }

  v6 = _NULogger;
  if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_FAULT))
  {
    v7 = 138543362;
    v8 = v4;
    _os_log_fault_impl(&dword_1C0184000, v6, OS_LOG_TYPE_FAULT, "AV media services reset: %{public}@", &v7, 0xCu);
  }
}

- (id)debugDescription
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__26675;
  v10 = __Block_byref_object_dispose__26676;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __37__NURenderNodeCache_debugDescription__block_invoke;
  v5[3] = &unk_1E810B980;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __37__NURenderNodeCache_debugDescription__block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: 0x%p Count: %lu", objc_opt_class(), *(a1 + 32), objc_msgSend(*(*(a1 + 32) + 16), "count")];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  [*(*(*(a1 + 40) + 8) + 40) appendString:@"\n| Node Created   |     Node Hash       |                    Node                  | Hits"];
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(*(*(a1 + 32) + 16), "count")}];
  v6 = [*(*(a1 + 32) + 16) objectEnumerator];
  v7 = [v6 nextObject];
  if (v7)
  {
    v8 = v7;
    do
    {
      [v5 addObject:v8];
      v9 = [v6 nextObject];

      v8 = v9;
    }

    while (v9);
  }

  v28 = v6;
  v29 = v5;
  [v5 sortedArrayUsingComparator:&__block_literal_global_26681];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v34 = 0u;
  v10 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v32;
    do
    {
      v14 = 0;
      v15 = v12;
      do
      {
        if (*v32 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v31 + 1) + 8 * v14);
        v17 = [v16 nodeCreationJobName];
        v18 = [v15 nodeCreationJobName];
        v19 = [v17 isEqual:v18];

        if ((v19 & 1) == 0)
        {
          v20 = *(*(*(a1 + 40) + 8) + 40);
          v21 = [v16 nodeCreationJobName];
          [v20 appendFormat:@"\n\n==== %@ ==============", v21];
        }

        if ([v16 cacheHitsCount])
        {
          v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", objc_msgSend(v16, "cacheHitsCount")];
        }

        else
        {
          v22 = &stru_1F3F4BA98;
        }

        v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@: %p>", objc_opt_class(), v16];
        v24 = [v23 cStringUsingEncoding:1];

        v25 = *(*(*(a1 + 40) + 8) + 40);
        [v16 nodeCreationTime];
        v27 = NUAbsoluteTimeToString(v26);
        [v25 appendFormat:@"\n(%@) %20lu : %42s Hits:%@", v27, objc_msgSend(v16, "hash"), v24, v22];

        v12 = v16;
        ++v14;
        v15 = v12;
      }

      while (v11 != v14);
      v11 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v11);
  }

  else
  {
    v12 = 0;
  }

  [*(*(*(a1 + 40) + 8) + 40) appendString:@"\n>"];
}

uint64_t __37__NURenderNodeCache_debugDescription__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 nodeCreationJobName];
  v7 = [v5 nodeCreationJobName];
  if ([v6 isEqual:v7])
  {
    [v4 nodeCreationTime];
    v9 = v8;
    [v5 nodeCreationTime];
    v11 = v10;
    v12 = [MEMORY[0x1E696AD98] numberWithDouble:v9];
    v13 = [MEMORY[0x1E696AD98] numberWithDouble:v11];
    v14 = [v12 compare:v13];
  }

  else
  {
    v14 = [v6 compare:v7];
  }

  return v14;
}

- (unint64_t)unhitCacheEntriesCount
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __43__NURenderNodeCache_unhitCacheEntriesCount__block_invoke;
  v5[3] = &unk_1E810B980;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __43__NURenderNodeCache_unhitCacheEntriesCount__block_invoke(uint64_t a1)
{
  v5 = [*(*(a1 + 32) + 16) objectEnumerator];
  v2 = [v5 nextObject];
  if (v2)
  {
    v3 = v2;
    do
    {
      if (![v3 cacheHitsCount])
      {
        ++*(*(*(a1 + 40) + 8) + 24);
      }

      v4 = [v5 nextObject];

      v3 = v4;
    }

    while (v4);
  }
}

- (id)retrieveAndCacheNode:(id)node
{
  nodeCopy = node;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__26675;
  v16 = __Block_byref_object_dispose__26676;
  v17 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__NURenderNodeCache_retrieveAndCacheNode___block_invoke;
  block[3] = &unk_1E810B500;
  v10 = nodeCopy;
  v11 = &v12;
  block[4] = self;
  v6 = nodeCopy;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __42__NURenderNodeCache_retrieveAndCacheNode___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) member:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  if (v6)
  {
    v7 = [*(v5 + 40) cacheHitsCount] + 1;

    [v6 setCacheHitsCount:v7];
  }

  else
  {
    [*(a1 + 32) _addNode:*(a1 + 40)];
    v8 = *(a1 + 40);
    v9 = (*(*(a1 + 48) + 8) + 40);

    objc_storeStrong(v9, v8);
  }
}

- (id)cachedNodeForNode:(id)node
{
  nodeCopy = node;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__26675;
  v16 = __Block_byref_object_dispose__26676;
  v17 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__NURenderNodeCache_cachedNodeForNode___block_invoke;
  block[3] = &unk_1E810B500;
  v10 = nodeCopy;
  v11 = &v12;
  block[4] = self;
  v6 = nodeCopy;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __39__NURenderNodeCache_cachedNodeForNode___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 16) member:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(*(a1[6] + 8) + 40);
  v6 = [v5 cacheHitsCount] + 1;

  return [v5 setCacheHitsCount:v6];
}

- (void)addNode:(id)node
{
  nodeCopy = node;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __29__NURenderNodeCache_addNode___block_invoke;
  v7[3] = &unk_1E810B958;
  v7[4] = self;
  v8 = nodeCopy;
  v6 = nodeCopy;
  dispatch_sync(queue, v7);
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E6987370] object:0];

  v4.receiver = self;
  v4.super_class = NURenderNodeCache;
  [(NURenderNodeCache *)&v4 dealloc];
}

- (NURenderNodeCache)init
{
  v10.receiver = self;
  v10.super_class = NURenderNodeCache;
  v2 = [(NURenderNodeCache *)&v10 init];
  weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
  cache = v2->_cache;
  v2->_cache = weakObjectsHashTable;

  v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v6 = dispatch_queue_create("NURenderNodeCache", v5);
  queue = v2->_queue;
  v2->_queue = v6;

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:v2 selector:sel__mediaServicesWereReset_ name:*MEMORY[0x1E6987370] object:0];

  return v2;
}

+ (NURenderNodeCache)sharedInstance
{
  v2 = +[NUFactory sharedFactory];
  renderNodeCache = [v2 renderNodeCache];

  return renderNodeCache;
}

@end