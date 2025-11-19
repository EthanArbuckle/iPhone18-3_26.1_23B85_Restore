@interface CKDispatchCache
- (BOOL)isGeneratingForKey:(id)a3;
- (BOOL)waitOnGenerationForKey:(id)a3;
- (CKDispatchCache)initWithCacheLimit:(unint64_t)a3 dispatchPriority:(int64_t)a4;
- (IMDispatchQueue)dispatchQueue;
- (id)cachedObjectForKey:(id)a3;
- (void)_beginGeneratingForKeyUnlocked:(id)a3;
- (void)_endGeneratingForKeyUnlocked:(id)a3;
- (void)beginGeneratingForKey:(id)a3;
- (void)clearQueue;
- (void)dealloc;
- (void)endGeneratingForKey:(id)a3;
- (void)enqueueBlock:(id)a3 withPriority:(int64_t)a4;
- (void)enqueueGenerationBlock:(id)a3 completion:(id)a4 withPriority:(int64_t)a5 forKey:(id)a6;
- (void)resume;
- (void)setCachedObject:(id)a3 forKey:(id)a4;
- (void)suspend;
@end

@implementation CKDispatchCache

- (void)resume
{
  v2 = [(CKDispatchCache *)self dispatchQueue];
  [v2 setSuspended:0];
}

- (IMDispatchQueue)dispatchQueue
{
  dispatchQueue = self->_dispatchQueue;
  if (!dispatchQueue)
  {
    v4 = [MEMORY[0x1E69A6628] serialQueueWithDispatchPriority:self->_dispatchPriority];
    v5 = self->_dispatchQueue;
    self->_dispatchQueue = v4;

    [(IMDispatchQueue *)self->_dispatchQueue setSuspended:1];
    dispatchQueue = self->_dispatchQueue;
  }

  return dispatchQueue;
}

- (CKDispatchCache)initWithCacheLimit:(unint64_t)a3 dispatchPriority:(int64_t)a4
{
  v17.receiver = self;
  v17.super_class = CKDispatchCache;
  v6 = [(CKDispatchCache *)&v17 init];
  if (v6)
  {
    v7 = [MEMORY[0x1E69A6160] sharedInstance];
    [v7 addListener:v6];

    v8 = objc_alloc_init(MEMORY[0x1E696AB50]);
    pendingKeys = v6->_pendingKeys;
    v6->_pendingKeys = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    pendingGroups = v6->_pendingGroups;
    v6->_pendingGroups = v10;

    v12 = CKCreateNSCache(a3);
    objectCache = v6->_objectCache;
    v6->_objectCache = v12;

    v14 = dispatch_queue_create(0, MEMORY[0x1E69E96A8]);
    lockQueue = v6->_lockQueue;
    v6->_lockQueue = v14;

    v6->_dispatchPriority = a4;
  }

  return v6;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E69A6160] sharedInstance];
  [v3 removeListener:self];

  v4.receiver = self;
  v4.super_class = CKDispatchCache;
  [(CKDispatchCache *)&v4 dealloc];
}

- (id)cachedObjectForKey:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  if ([v4 length])
  {
    lockQueue = self->_lockQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __38__CKDispatchCache_cachedObjectForKey___block_invoke;
    block[3] = &unk_1E72EB858;
    v13 = &v14;
    block[4] = self;
    v6 = v4;
    v12 = v6;
    dispatch_sync(lockQueue, block);
    if (IMOSLoggingEnabled())
    {
      CKLogCStringForType(2);
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        if (v15[5])
        {
          v8 = @"YES";
        }

        else
        {
          v8 = @"NO";
        }

        *buf = 138412546;
        v21 = v6;
        v22 = 2112;
        v23 = v8;
        _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_DEBUG, "Dispatch cache lookup [%@]: %@", buf, 0x16u);
      }
    }

    if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
    {
      _CKLog();
    }
  }

  v9 = v15[5];
  _Block_object_dispose(&v14, 8);

  return v9;
}

void __38__CKDispatchCache_cachedObjectForKey___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 8) objectForKey:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)setCachedObject:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 length])
  {
    lockQueue = self->_lockQueue;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __42__CKDispatchCache_setCachedObject_forKey___block_invoke;
    v9[3] = &unk_1E72EB880;
    v10 = v6;
    v11 = self;
    v12 = v7;
    ck_dispatch_isolated(lockQueue, v9);
  }
}

void __42__CKDispatchCache_setCachedObject_forKey___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) objectCache];
  v4 = v3;
  if (v2)
  {
    [v3 setObject:*(a1 + 32) forKey:*(a1 + 48)];
  }

  else
  {
    [v3 removeObjectForKey:*(a1 + 48)];
  }
}

- (void)enqueueBlock:(id)a3 withPriority:(int64_t)a4
{
  if (a3)
  {
    v6 = a3;
    v7 = [(CKDispatchCache *)self dispatchQueue];
    [v7 addBlock:v6 withQueuePriority:a4];
  }
}

- (void)enqueueGenerationBlock:(id)a3 completion:(id)a4 withPriority:(int64_t)a5 forKey:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = v12;
  if (v10 && [v12 length])
  {
    [(CKDispatchCache *)self beginGeneratingForKey:v13];
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __73__CKDispatchCache_enqueueGenerationBlock_completion_withPriority_forKey___block_invoke;
    v19 = &unk_1E72EB8A8;
    v22 = v10;
    v20 = v13;
    v21 = self;
    v23 = v11;
    v14 = _Block_copy(&v16);
    v15 = [(CKDispatchCache *)self dispatchQueue:v16];
    [v15 addBlock:v14 withQueuePriority:a5];
  }
}

void __73__CKDispatchCache_enqueueGenerationBlock_completion_withPriority_forKey___block_invoke(int8x16_t *a1)
{
  v2 = (*(a1[3].i64[0] + 16))();
  v3 = *(a1[2].i64[1] + 40);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __73__CKDispatchCache_enqueueGenerationBlock_completion_withPriority_forKey___block_invoke_2;
  v8[3] = &unk_1E72EB880;
  v4 = v2;
  v9 = v4;
  v7 = a1[2];
  v5 = v7.i64[0];
  v10 = vextq_s8(v7, v7, 8uLL);
  ck_dispatch_isolated(v3, v8);
  v6 = a1[3].i64[1];
  if (v6)
  {
    (*(v6 + 16))();
  }
}

uint64_t __73__CKDispatchCache_enqueueGenerationBlock_completion_withPriority_forKey___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [*(a1 + 40) objectCache];
    [v2 setObject:*(a1 + 32) forKey:*(a1 + 48)];
  }

  v3 = *(a1 + 40);
  v4 = *(a1 + 48);

  return [v3 _endGeneratingForKeyUnlocked:v4];
}

- (BOOL)isGeneratingForKey:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  if ([v4 length])
  {
    lockQueue = self->_lockQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __38__CKDispatchCache_isGeneratingForKey___block_invoke;
    block[3] = &unk_1E72EB858;
    v10 = &v11;
    block[4] = self;
    v9 = v4;
    dispatch_sync(lockQueue, block);
  }

  v6 = *(v12 + 24);
  _Block_object_dispose(&v11, 8);

  return v6;
}

void __38__CKDispatchCache_isGeneratingForKey___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) pendingKeys];
  *(*(*(a1 + 48) + 8) + 24) = [v2 containsObject:*(a1 + 40)];
}

- (void)_beginGeneratingForKeyUnlocked:(id)a3
{
  v9 = a3;
  v4 = [(CKDispatchCache *)self pendingKeys];
  v5 = [v4 containsObject:v9];

  if ((v5 & 1) == 0)
  {
    v6 = dispatch_group_create();
    dispatch_group_enter(v6);
    v7 = [(CKDispatchCache *)self pendingGroups];
    [v7 setObject:v6 forKey:v9];
  }

  v8 = [(CKDispatchCache *)self pendingKeys];
  [v8 addObject:v9];
}

- (void)beginGeneratingForKey:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    lockQueue = self->_lockQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __41__CKDispatchCache_beginGeneratingForKey___block_invoke;
    v6[3] = &unk_1E72EB8D0;
    v6[4] = self;
    v7 = v4;
    ck_dispatch_isolated(lockQueue, v6);
  }
}

- (void)_endGeneratingForKeyUnlocked:(id)a3
{
  v10 = a3;
  v4 = [(CKDispatchCache *)self pendingKeys];
  v5 = [v4 countForObject:v10];

  v6 = [(CKDispatchCache *)self pendingKeys];
  [v6 removeObject:v10];

  if (v5 == 1)
  {
    v7 = [(CKDispatchCache *)self pendingGroups];
    v8 = [v7 objectForKey:v10];

    if (v8)
    {
      dispatch_group_leave(v8);
    }

    v9 = [(CKDispatchCache *)self pendingGroups];
    [v9 removeObjectForKey:v10];
  }
}

- (void)endGeneratingForKey:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    lockQueue = self->_lockQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __39__CKDispatchCache_endGeneratingForKey___block_invoke;
    v6[3] = &unk_1E72EB8D0;
    v6[4] = self;
    v7 = v4;
    ck_dispatch_isolated(lockQueue, v6);
  }
}

- (BOOL)waitOnGenerationForKey:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy_;
    v16 = __Block_byref_object_dispose_;
    v17 = 0;
    lockQueue = self->_lockQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __42__CKDispatchCache_waitOnGenerationForKey___block_invoke;
    block[3] = &unk_1E72EB858;
    v11 = &v12;
    block[4] = self;
    v10 = v4;
    dispatch_sync(lockQueue, block);
    if (v13[5])
    {
      v6 = dispatch_time(0, 2000000000);
      v7 = dispatch_group_wait(v13[5], v6) == 0;
    }

    else
    {
      v7 = 1;
    }

    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

void __42__CKDispatchCache_waitOnGenerationForKey___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) pendingGroups];
  v2 = [v5 objectForKey:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)suspend
{
  v2 = [(CKDispatchCache *)self dispatchQueue];
  [v2 setSuspended:1];
}

- (void)clearQueue
{
  v3 = [(CKDispatchCache *)self pendingGroups];
  v6 = [v3 copy];

  v4 = [(CKDispatchCache *)self pendingKeys];
  [v4 removeAllObjects];

  v5 = [(CKDispatchCache *)self pendingGroups];
  [v5 removeAllObjects];

  [(IMDispatchQueue *)self->_dispatchQueue removeAllOutstandingBlocks];
  [v6 enumerateKeysAndObjectsUsingBlock:&__block_literal_global];
}

@end