@interface CKMultiDict
- (CKMultiDict)init;
- (id)allKeys;
- (id)dequeueObjectForKey:(id)a3;
- (id)description;
- (id)headObjectForKey:(id)a3;
- (id)objectsForKey:(id)a3;
- (id)peekObjectForKey:(id)a3;
- (id)popObjectForKey:(id)a3;
- (unint64_t)count;
- (void)pushObject:(id)a3 forKey:(id)a4;
- (void)removeAllObjects;
- (void)removeObjectsForKey:(id)a3;
@end

@implementation CKMultiDict

- (CKMultiDict)init
{
  v7.receiver = self;
  v7.super_class = CKMultiDict;
  v2 = [(CKMultiDict *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(CKMultiDict *)v2 setDictionary:v3];
    v4 = dispatch_queue_create(0, 0);
    lockQueue = v2->_lockQueue;
    v2->_lockQueue = v4;
  }

  return v2;
}

- (id)description
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__66;
  v10 = __Block_byref_object_dispose__66;
  v11 = 0;
  lockQueue = self->_lockQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __26__CKMultiDict_description__block_invoke;
  v5[3] = &unk_1E72F1660;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(lockQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __26__CKMultiDict_description__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) dictionary];
  v2 = [v5 description];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)pushObject:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  lockQueue = self->_lockQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__CKMultiDict_pushObject_forKey___block_invoke;
  block[3] = &unk_1E72EB880;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(lockQueue, block);
}

void __33__CKMultiDict_pushObject_forKey___block_invoke(uint64_t a1)
{
  ++*(*(a1 + 32) + 16);
  v3 = [*(a1 + 32) dictionary];
  v2 = [v3 objectForKey:*(a1 + 40)];
  if (!v2)
  {
    v2 = [MEMORY[0x1E695DF70] array];
    [v3 setObject:v2 forKey:*(a1 + 40)];
  }

  [v2 addObject:*(a1 + 48)];
}

- (id)peekObjectForKey:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__66;
  v16 = __Block_byref_object_dispose__66;
  v17 = 0;
  lockQueue = self->_lockQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__CKMultiDict_peekObjectForKey___block_invoke;
  block[3] = &unk_1E72EB858;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(lockQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __32__CKMultiDict_peekObjectForKey___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) dictionary];
  v2 = [v6 objectForKey:*(a1 + 40)];
  v3 = [v2 lastObject];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)popObjectForKey:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__66;
  v16 = __Block_byref_object_dispose__66;
  v17 = 0;
  lockQueue = self->_lockQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__CKMultiDict_popObjectForKey___block_invoke;
  block[3] = &unk_1E72EC828;
  block[4] = self;
  v10 = v4;
  v11 = &v12;
  v6 = v4;
  dispatch_sync(lockQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __31__CKMultiDict_popObjectForKey___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = v2[2];
  if (v3)
  {
    v2[2] = v3 - 1;
    v2 = a1[4];
  }

  v4 = [v2 dictionary];
  v8 = [v4 objectForKey:a1[5]];

  v5 = [v8 lastObject];
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  if (*(*(a1[6] + 8) + 40))
  {
    [v8 removeLastObject];
  }
}

- (id)headObjectForKey:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__66;
  v16 = __Block_byref_object_dispose__66;
  v17 = 0;
  lockQueue = self->_lockQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__CKMultiDict_headObjectForKey___block_invoke;
  block[3] = &unk_1E72EC828;
  block[4] = self;
  v10 = v4;
  v11 = &v12;
  v6 = v4;
  dispatch_sync(lockQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __32__CKMultiDict_headObjectForKey___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dictionary];
  v6 = [v2 objectForKey:*(a1 + 40)];

  if ([v6 count])
  {
    v3 = [v6 objectAtIndex:0];
    v4 = *(*(a1 + 48) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }
}

- (id)dequeueObjectForKey:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__66;
  v16 = __Block_byref_object_dispose__66;
  v17 = 0;
  lockQueue = self->_lockQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__CKMultiDict_dequeueObjectForKey___block_invoke;
  block[3] = &unk_1E72EC828;
  block[4] = self;
  v10 = v4;
  v11 = &v12;
  v6 = v4;
  dispatch_sync(lockQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __35__CKMultiDict_dequeueObjectForKey___block_invoke(uint64_t a1)
{
  --*(*(a1 + 32) + 16);
  v2 = [*(a1 + 32) dictionary];
  v6 = [v2 objectForKey:*(a1 + 40)];

  if ([v6 count])
  {
    v3 = [v6 objectAtIndex:0];
    v4 = *(*(a1 + 48) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    [v6 removeObjectAtIndex:0];
  }
}

- (id)objectsForKey:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__66;
  v17 = __Block_byref_object_dispose__66;
  v18 = 0;
  lockQueue = self->_lockQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __29__CKMultiDict_objectsForKey___block_invoke;
  block[3] = &unk_1E72EB858;
  v12 = &v13;
  block[4] = self;
  v6 = v4;
  v11 = v6;
  dispatch_sync(lockQueue, block);
  if ([v14[5] count])
  {
    v7 = v14[5];
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  _Block_object_dispose(&v13, 8);

  return v8;
}

void __29__CKMultiDict_objectsForKey___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dictionary];
  v3 = [v2 objectForKey:*(a1 + 40)];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [*(*(*(a1 + 48) + 8) + 40) copy];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

- (void)removeObjectsForKey:(id)a3
{
  v4 = a3;
  lockQueue = self->_lockQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __35__CKMultiDict_removeObjectsForKey___block_invoke;
  v7[3] = &unk_1E72EB8D0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(lockQueue, v7);
}

void __35__CKMultiDict_removeObjectsForKey___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) dictionary];
  v2 = [v3 objectForKey:*(a1 + 40)];
  *(*(a1 + 32) + 16) -= [v2 count];

  [v3 removeObjectForKey:*(a1 + 40)];
}

- (void)removeAllObjects
{
  lockQueue = self->_lockQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__CKMultiDict_removeAllObjects__block_invoke;
  block[3] = &unk_1E72EBA18;
  block[4] = self;
  dispatch_async(lockQueue, block);
}

void __31__CKMultiDict_removeAllObjects__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 16) = 0;
  v1 = [*(a1 + 32) dictionary];
  [v1 removeAllObjects];
}

- (unint64_t)count
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lockQueue = self->_lockQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __20__CKMultiDict_count__block_invoke;
  v5[3] = &unk_1E72F1660;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(lockQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)allKeys
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__66;
  v12 = __Block_byref_object_dispose__66;
  v13 = [MEMORY[0x1E695DF70] array];
  lockQueue = self->_lockQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __22__CKMultiDict_allKeys__block_invoke;
  v7[3] = &unk_1E72F6A78;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(lockQueue, v7);
  if ([v9[5] count])
  {
    v4 = v9[5];
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __22__CKMultiDict_allKeys__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dictionary];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __22__CKMultiDict_allKeys__block_invoke_2;
  v3[3] = &unk_1E72F6E78;
  v3[4] = *(a1 + 40);
  [v2 enumerateKeysAndObjectsUsingBlock:v3];
}

void __22__CKMultiDict_allKeys__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if ([a3 count])
  {
    [*(*(*(a1 + 32) + 8) + 40) addObject:v5];
  }
}

@end