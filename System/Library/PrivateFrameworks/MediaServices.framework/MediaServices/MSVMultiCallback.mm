@interface MSVMultiCallback
- (BOOL)removeCallback:(id)a3;
- (MSVCallback)firstCallback;
- (MSVCallback)lastCallback;
- (MSVMultiCallback)init;
- (NSArray)callbacks;
- (unint64_t)count;
- (void)addCallback:(id)a3;
- (void)invoke;
- (void)invokeWithObject:(id)a3;
- (void)setFirstCallback:(id)a3;
- (void)setLastCallback:(id)a3;
@end

@implementation MSVMultiCallback

- (MSVMultiCallback)init
{
  v7.receiver = self;
  v7.super_class = MSVMultiCallback;
  v2 = [(MSVMultiCallback *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.MediaServices.MultiCallback", v3);
    serialQueue = v2->_serialQueue;
    v2->_serialQueue = v4;
  }

  return v2;
}

- (unint64_t)count
{
  v2 = [(MSVMultiCallback *)self callbacks];
  v3 = [v2 count];

  return v3;
}

- (NSArray)callbacks
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__6051;
  v11 = __Block_byref_object_dispose__6052;
  v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
  serialQueue = self->_serialQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __29__MSVMultiCallback_callbacks__block_invoke;
  v6[3] = &unk_1E7982B78;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(serialQueue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __29__MSVMultiCallback_callbacks__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 16))
  {
    [*(*(*(a1 + 40) + 8) + 40) addObject:?];
    v2 = *(a1 + 32);
  }

  result = [*(*(*(a1 + 40) + 8) + 40) addObjectsFromArray:*(v2 + 8)];
  if (*(*(a1 + 32) + 24))
  {
    v4 = *(*(*(a1 + 40) + 8) + 40);

    return [v4 addObject:?];
  }

  return result;
}

- (void)invokeWithObject:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(MSVMultiCallback *)self callbacks];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v11 + 1) + 8 * v9++) invokeWithObject:v4];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)invoke
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(MSVMultiCallback *)self callbacks];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) invoke];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (BOOL)removeCallback:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__MSVMultiCallback_removeCallback___block_invoke;
  block[3] = &unk_1E7982B50;
  block[4] = self;
  v9 = v4;
  v10 = &v11;
  v6 = v4;
  dispatch_sync(serialQueue, block);
  LOBYTE(serialQueue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return serialQueue;
}

uint64_t __35__MSVMultiCallback_removeCallback___block_invoke(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  v4 = *(v3 + 16);
  if (v4 == v2)
  {
    *(v3 + 16) = 0;

    *(*(a1[6] + 8) + 24) = 1;
    v3 = a1[4];
    v2 = a1[5];
  }

  v5 = *(v3 + 24);
  if (v5 == v2)
  {
    *(v3 + 24) = 0;

    *(*(a1[6] + 8) + 24) = 1;
    v3 = a1[4];
    v2 = a1[5];
  }

  result = [*(v3 + 8) containsObject:v2];
  if (result)
  {
    result = [*(a1[4] + 8) removeObject:a1[5]];
    *(*(a1[6] + 8) + 24) = 1;
  }

  return result;
}

- (MSVCallback)lastCallback
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__6051;
  v10 = __Block_byref_object_dispose__6052;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __32__MSVMultiCallback_lastCallback__block_invoke;
  v5[3] = &unk_1E7982B78;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setLastCallback:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __36__MSVMultiCallback_setLastCallback___block_invoke;
  v7[3] = &unk_1E7982B28;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(serialQueue, v7);
}

- (MSVCallback)firstCallback
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__6051;
  v10 = __Block_byref_object_dispose__6052;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __33__MSVMultiCallback_firstCallback__block_invoke;
  v5[3] = &unk_1E7982B78;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setFirstCallback:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37__MSVMultiCallback_setFirstCallback___block_invoke;
  v7[3] = &unk_1E7982B28;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(serialQueue, v7);
}

- (void)addCallback:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __32__MSVMultiCallback_addCallback___block_invoke;
  v7[3] = &unk_1E7982B28;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(serialQueue, v7);
}

uint64_t __32__MSVMultiCallback_addCallback___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  if (!v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v4 = *(a1 + 32);
    v5 = *(v4 + 8);
    *(v4 + 8) = v3;

    v2 = *(*(a1 + 32) + 8);
  }

  v6 = *(a1 + 40);

  return [v2 addObject:v6];
}

@end