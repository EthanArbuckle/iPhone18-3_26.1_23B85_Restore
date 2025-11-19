@interface FBPlistApplicationDataStoreRepository
- (BOOL)_isEligibleForSaving:(id)a3;
- (BOOL)containsKey:(id)a3 forApplication:(id)a4;
- (BOOL)isDirty;
- (FBApplicationDataStoreRepositoryDelegate)delegate;
- (FBPlistApplicationDataStoreRepository)initWithStorePath:(id)a3;
- (id)_stateQueue_addStoreForIdentifierIfNecessary:(id)a3;
- (id)_stateQueue_objectForKey:(id)a3 forIdentifier:(id)a4;
- (id)_stateQueue_objectsForKeys:(id)a3;
- (id)_stateQueue_storeForIdentifier:(id)a3;
- (id)allObjectsForKeys:(id)a3;
- (id)applicationIdentifiersWithState;
- (id)keysForApplication:(id)a3;
- (id)migrateIdentifier:(id)a3 toIdentifier:(id)a4;
- (id)objectForKey:(id)a3 forApplication:(id)a4;
- (void)_load;
- (void)_notifyDelegateOfChangeForKeys:(id)a3 application:(id)a4;
- (void)_notifyDelegateOfStoreInvalidationForIdentifier:(id)a3;
- (void)_stateQueue_markDirty;
- (void)_stateQueue_removeStoreForIdentifier:(id)a3;
- (void)_writeQueue_flushSynchronously;
- (void)beginBatchedUpdate;
- (void)dealloc;
- (void)endBatchedUpdate;
- (void)flushSynchronously;
- (void)removeAllObjectsForApplication:(id)a3;
- (void)removeObjectForKey:(id)a3 forApplication:(id)a4;
- (void)removeObjectsForKeys:(id)a3 forApplication:(id)a4;
- (void)setObject:(id)a3 forKey:(id)a4 forApplication:(id)a5;
@end

@implementation FBPlistApplicationDataStoreRepository

- (FBPlistApplicationDataStoreRepository)initWithStorePath:(id)a3
{
  v6 = a3;
  v16.receiver = self;
  v16.super_class = FBPlistApplicationDataStoreRepository;
  v7 = [(FBPlistApplicationDataStoreRepository *)&v16 init];
  v8 = v7;
  if (v7)
  {
    if (!v6)
    {
      [(FBPlistApplicationDataStoreRepository *)a2 initWithStorePath:v7];
    }

    objc_storeStrong(&v7->_storeURL, a3);
    Serial = BSDispatchQueueCreateSerial();
    stateQueue = v8->_stateQueue;
    v8->_stateQueue = Serial;

    v11 = BSDispatchQueueCreateSerial();
    writeQueue = v8->_writeQueue;
    v8->_writeQueue = v11;

    v13 = BSDispatchQueueCreateSerial();
    calloutQueue = v8->_calloutQueue;
    v8->_calloutQueue = v13;

    [(FBPlistApplicationDataStoreRepository *)v8 _load];
  }

  return v8;
}

- (void)dealloc
{
  if (self->_stateQueue)
  {
    v7[0] = 0;
    v7[1] = v7;
    v7[2] = 0x3032000000;
    v7[3] = __Block_byref_object_copy__1;
    v7[4] = __Block_byref_object_dispose__1;
    v8 = self->_state;
    state = self->_state;
    self->_state = 0;

    stateQueue = self->_stateQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __48__FBPlistApplicationDataStoreRepository_dealloc__block_invoke;
    block[3] = &unk_1E783B178;
    block[4] = v7;
    dispatch_async(stateQueue, block);
    _Block_object_dispose(v7, 8);
  }

  v5.receiver = self;
  v5.super_class = FBPlistApplicationDataStoreRepository;
  [(FBPlistApplicationDataStoreRepository *)&v5 dealloc];
}

void __48__FBPlistApplicationDataStoreRepository_dealloc__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

- (BOOL)isDirty
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__FBPlistApplicationDataStoreRepository_isDirty__block_invoke;
  v5[3] = &unk_1E783BF48;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)applicationIdentifiersWithState
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__1;
  v11 = __Block_byref_object_dispose__1;
  v12 = [MEMORY[0x1E695DF70] array];
  stateQueue = self->_stateQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __72__FBPlistApplicationDataStoreRepository_applicationIdentifiersWithState__block_invoke;
  v6[3] = &unk_1E783B558;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(stateQueue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __72__FBPlistApplicationDataStoreRepository_applicationIdentifiersWithState__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) allKeys];
  if (v2)
  {
    v3 = v2;
    [*(*(*(a1 + 40) + 8) + 40) addObjectsFromArray:v2];
    v2 = v3;
  }
}

- (id)keysForApplication:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__1;
    v16 = __Block_byref_object_dispose__1;
    v17 = 0;
    stateQueue = self->_stateQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __60__FBPlistApplicationDataStoreRepository_keysForApplication___block_invoke;
    block[3] = &unk_1E783BF70;
    block[4] = self;
    v10 = v4;
    v11 = &v12;
    dispatch_sync(stateQueue, block);
    v7 = v13[5];

    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __60__FBPlistApplicationDataStoreRepository_keysForApplication___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _stateQueue_storeForIdentifier:*(a1 + 40)];
  if (v2)
  {
    v6 = v2;
    v3 = [v2 allKeys];
    v4 = *(*(a1 + 48) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v2 = v6;
  }
}

- (BOOL)containsKey:(id)a3 forApplication:(id)a4
{
  v4 = [(FBPlistApplicationDataStoreRepository *)self objectForKey:a3 forApplication:a4];
  v5 = v4 != 0;

  return v5;
}

- (id)objectForKey:(id)a3 forApplication:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  v9 = 0;
  if (v6 && v7)
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__1;
    v20 = __Block_byref_object_dispose__1;
    v21 = 0;
    stateQueue = self->_stateQueue;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __69__FBPlistApplicationDataStoreRepository_objectForKey_forApplication___block_invoke;
    v12[3] = &unk_1E783BF98;
    v15 = &v16;
    v12[4] = self;
    v13 = v6;
    v14 = v8;
    dispatch_sync(stateQueue, v12);
    v9 = v17[5];

    _Block_object_dispose(&v16, 8);
  }

  return v9;
}

void __69__FBPlistApplicationDataStoreRepository_objectForKey_forApplication___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _stateQueue_objectForKey:*(a1 + 40) forIdentifier:*(a1 + 48)];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)allObjectsForKeys:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__1;
    v15 = __Block_byref_object_dispose__1;
    v16 = 0;
    stateQueue = self->_stateQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __59__FBPlistApplicationDataStoreRepository_allObjectsForKeys___block_invoke;
    block[3] = &unk_1E783BFC0;
    v10 = &v11;
    block[4] = self;
    v9 = v4;
    dispatch_sync(stateQueue, block);
    v6 = v12[5];

    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __59__FBPlistApplicationDataStoreRepository_allObjectsForKeys___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _stateQueue_objectsForKeys:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)setObject:(id)a3 forKey:(id)a4 forApplication:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v8)
  {
    if (v9 && v10 && [(FBPlistApplicationDataStoreRepository *)self _isEligibleForSaving:v8])
    {
      v12 = [v8 copy];
      stateQueue = self->_stateQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __73__FBPlistApplicationDataStoreRepository_setObject_forKey_forApplication___block_invoke;
      block[3] = &unk_1E783BFE8;
      block[4] = self;
      v16 = v11;
      v17 = v8;
      v18 = v9;
      v19 = v12;
      v14 = v12;
      dispatch_async(stateQueue, block);
    }
  }

  else
  {
    [(FBPlistApplicationDataStoreRepository *)self removeObjectForKey:v9 forApplication:v10];
  }
}

void __73__FBPlistApplicationDataStoreRepository_setObject_forKey_forApplication___block_invoke(uint64_t a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _stateQueue_storeForIdentifier:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 objectForKey:*(a1 + 56)];
  }

  else
  {
    if (!*(a1 + 48))
    {
      goto LABEL_14;
    }

    v4 = 0;
  }

  v5 = *(a1 + 48);
  if (v5 != v4 && ([v5 isEqual:v4] & 1) == 0)
  {
    if (*(a1 + 64))
    {
      v6 = [*(a1 + 32) _stateQueue_addStoreForIdentifierIfNecessary:*(a1 + 40)];

      [v6 setObject:*(a1 + 64) forKey:*(a1 + 56)];
      v3 = v6;
    }

    else
    {
      [v3 removeObjectForKey:*(a1 + 56)];
    }

    [*(a1 + 32) _stateQueue_markDirty];
    v7 = [v3 count];
    v8 = *(a1 + 32);
    if (v7)
    {
      v11[0] = *(a1 + 56);
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
      [v8 _notifyDelegateOfChangeForKeys:v9 application:*(a1 + 40)];
    }

    else
    {
      [*(a1 + 32) _stateQueue_removeStoreForIdentifier:*(a1 + 40)];
    }
  }

LABEL_14:
  v10 = *MEMORY[0x1E69E9840];
}

- (void)removeObjectForKey:(id)a3 forApplication:(id)a4
{
  if (a3 && a4)
  {
    v6 = MEMORY[0x1E695DEC8];
    v7 = a4;
    v8 = [v6 arrayWithObject:a3];
    [(FBPlistApplicationDataStoreRepository *)self removeObjectsForKeys:v8 forApplication:v7];
  }
}

- (void)removeObjectsForKeys:(id)a3 forApplication:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [v6 count];
    if (v7)
    {
      if (v8)
      {
        stateQueue = self->_stateQueue;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __77__FBPlistApplicationDataStoreRepository_removeObjectsForKeys_forApplication___block_invoke;
        block[3] = &unk_1E783B300;
        block[4] = self;
        v11 = v7;
        v12 = v6;
        dispatch_async(stateQueue, block);
      }
    }
  }
}

void __77__FBPlistApplicationDataStoreRepository_removeObjectsForKeys_forApplication___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _stateQueue_storeForIdentifier:*(a1 + 40)];
  if (v2)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __77__FBPlistApplicationDataStoreRepository_removeObjectsForKeys_forApplication___block_invoke_2;
    v7[3] = &unk_1E783C010;
    v8 = *(a1 + 48);
    v3 = [v2 keysOfEntriesPassingTest:v7];
    v4 = [v3 allObjects];

    if ([v4 count])
    {
      [v2 removeObjectsForKeys:v4];
      [*(a1 + 32) _stateQueue_markDirty];
      v5 = [v2 count];
      v6 = *(a1 + 32);
      if (v5)
      {
        [v6 _notifyDelegateOfChangeForKeys:v4 application:*(a1 + 40)];
      }

      else
      {
        [v6 _stateQueue_removeStoreForIdentifier:*(a1 + 40)];
      }
    }
  }
}

- (void)removeAllObjectsForApplication:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    stateQueue = self->_stateQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __72__FBPlistApplicationDataStoreRepository_removeAllObjectsForApplication___block_invoke;
    v7[3] = &unk_1E783B240;
    v7[4] = self;
    v8 = v4;
    dispatch_async(stateQueue, v7);
  }
}

- (void)flushSynchronously
{
  writeQueue = self->_writeQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__FBPlistApplicationDataStoreRepository_flushSynchronously__block_invoke;
  block[3] = &unk_1E783B580;
  block[4] = self;
  dispatch_sync(writeQueue, block);
}

- (void)beginBatchedUpdate
{
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__FBPlistApplicationDataStoreRepository_beginBatchedUpdate__block_invoke;
  block[3] = &unk_1E783B580;
  block[4] = self;
  dispatch_sync(stateQueue, block);
}

- (void)endBatchedUpdate
{
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__FBPlistApplicationDataStoreRepository_endBatchedUpdate__block_invoke;
  block[3] = &unk_1E783B580;
  block[4] = self;
  dispatch_sync(stateQueue, block);
}

void __57__FBPlistApplicationDataStoreRepository_endBatchedUpdate__block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  if (v4)
  {
    *(v3 + 32) = v4 - 1;
    v5 = *(a1 + 32);
    if (*(v5 + 24) == 1 && !*(v5 + 32))
    {
      block[5] = v1;
      block[6] = v2;
      v6 = *(v5 + 64);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __57__FBPlistApplicationDataStoreRepository_endBatchedUpdate__block_invoke_2;
      block[3] = &unk_1E783B580;
      block[4] = v5;
      dispatch_async(v6, block);
    }
  }
}

- (id)migrateIdentifier:(id)a3 toIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__1;
  v21 = __Block_byref_object_dispose__1;
  v22 = 0;
  stateQueue = self->_stateQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __72__FBPlistApplicationDataStoreRepository_migrateIdentifier_toIdentifier___block_invoke;
  v13[3] = &unk_1E783C038;
  v13[4] = self;
  v14 = v6;
  v15 = v7;
  v16 = &v17;
  v9 = v7;
  v10 = v6;
  dispatch_sync(stateQueue, v13);
  v11 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v11;
}

void __72__FBPlistApplicationDataStoreRepository_migrateIdentifier_toIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _stateQueue_storeForIdentifier:*(a1 + 40)];
  if (v2)
  {
    v3 = [*(a1 + 32) _stateQueue_storeForIdentifier:*(a1 + 48)];
    if (v3)
    {
      v4 = v3;
      v5 = MEMORY[0x1E696ABC0];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __72__FBPlistApplicationDataStoreRepository_migrateIdentifier_toIdentifier___block_invoke_3;
      v15[3] = &unk_1E783BC58;
      v16 = *(a1 + 48);
      v6 = [v5 bs_errorWithDomain:@"FBApplicationDataStore" code:1 configuration:v15];
      v7 = *(*(a1 + 56) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;
    }

    else
    {
      v4 = [*(a1 + 32) _stateQueue_addStoreForIdentifierIfNecessary:*(a1 + 48)];
      [v4 addEntriesFromDictionary:v2];
      [*(a1 + 32) _stateQueue_removeStoreForIdentifier:*(a1 + 40)];
      v13 = *(a1 + 32);
      v14 = [v4 allKeys];
      [v13 _notifyDelegateOfChangeForKeys:v14 application:*(a1 + 48)];

      [*(a1 + 32) _stateQueue_markDirty];
    }
  }

  else
  {
    v9 = MEMORY[0x1E696ABC0];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __72__FBPlistApplicationDataStoreRepository_migrateIdentifier_toIdentifier___block_invoke_2;
    v17[3] = &unk_1E783BC58;
    v18 = *(a1 + 40);
    v10 = [v9 bs_errorWithDomain:@"FBApplicationDataStore" code:1 configuration:v17];
    v11 = *(*(a1 + 56) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    v4 = v18;
  }
}

- (BOOL)_isEligibleForSaving:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (_isEligibleForSaving__onceToken != -1)
  {
    [FBPlistApplicationDataStoreRepository _isEligibleForSaving:];
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = _isEligibleForSaving____eligibleClassTypes;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if (objc_opt_isKindOfClass())
        {
          LOBYTE(v5) = 1;
          goto LABEL_13;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v9 = *MEMORY[0x1E69E9840];
  return v5;
}

void __62__FBPlistApplicationDataStoreRepository__isEligibleForSaving___block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DEC8]);
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = [v0 initWithObjects:{v1, v2, v3, v4, v5, objc_opt_class(), 0}];
  v7 = _isEligibleForSaving____eligibleClassTypes;
  _isEligibleForSaving____eligibleClassTypes = v6;
}

- (void)_load
{
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__FBPlistApplicationDataStoreRepository__load__block_invoke;
  block[3] = &unk_1E783B580;
  block[4] = self;
  dispatch_async(stateQueue, block);
}

void __46__FBPlistApplicationDataStoreRepository__load__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfURL:*(*(a1 + 32) + 8) options:1 error:0];
  if (v3)
  {
    v4 = [MEMORY[0x1E696AE40] propertyListWithData:v3 options:1 format:0 error:0];
    v5 = *(a1 + 32);
    v6 = *(v5 + 16);
    *(v5 + 16) = v4;
  }

  if (!*(*(a1 + 32) + 16) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v8 = *(a1 + 32);
    v9 = *(v8 + 16);
    *(v8 + 16) = v7;
  }

  objc_autoreleasePoolPop(v2);
}

- (id)_stateQueue_objectForKey:(id)a3 forIdentifier:(id)a4
{
  v6 = a3;
  stateQueue = self->_stateQueue;
  v8 = a4;
  dispatch_assert_queue_V2(stateQueue);
  v9 = [(FBPlistApplicationDataStoreRepository *)self _stateQueue_storeForIdentifier:v8];

  if (v9)
  {
    v10 = [v9 objectForKey:v6];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_stateQueue_objectsForKeys:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v19 = a3;
  dispatch_assert_queue_V2(self->_stateQueue);
  v18 = [MEMORY[0x1E695DF90] dictionary];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = [(NSMutableDictionary *)self->_state allKeys];
  v5 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        v10 = [(FBPlistApplicationDataStoreRepository *)self _stateQueue_storeForIdentifier:v9];
        v11 = v10;
        if (v10)
        {
          v12 = [v10 dictionaryWithValuesForKeys:v19];
          v13 = [v12 mutableCopy];

          v14 = [MEMORY[0x1E695DFB0] null];
          v15 = [v13 allKeysForObject:v14];

          [v13 removeObjectsForKeys:v15];
          [v18 setObject:v13 forKey:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v6);
  }

  v16 = *MEMORY[0x1E69E9840];

  return v18;
}

- (id)_stateQueue_storeForIdentifier:(id)a3
{
  stateQueue = self->_stateQueue;
  v5 = a3;
  dispatch_assert_queue_V2(stateQueue);
  v6 = [(NSMutableDictionary *)self->_state bs_safeObjectForKey:v5 ofType:objc_opt_class()];

  return v6;
}

- (id)_stateQueue_addStoreForIdentifierIfNecessary:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_stateQueue);
  v5 = [(FBPlistApplicationDataStoreRepository *)self _stateQueue_storeForIdentifier:v4];
  if (!v5)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(NSMutableDictionary *)self->_state setObject:v5 forKey:v4];
    [(FBPlistApplicationDataStoreRepository *)self _stateQueue_markDirty];
  }

  return v5;
}

- (void)_stateQueue_removeStoreForIdentifier:(id)a3
{
  v5 = a3;
  dispatch_assert_queue_V2(self->_stateQueue);
  v4 = [(NSMutableDictionary *)self->_state objectForKey:v5];

  if (v4)
  {
    [(NSMutableDictionary *)self->_state removeObjectForKey:v5];
    [(FBPlistApplicationDataStoreRepository *)self _stateQueue_markDirty];
    [(FBPlistApplicationDataStoreRepository *)self _notifyDelegateOfStoreInvalidationForIdentifier:v5];
  }
}

- (void)_stateQueue_markDirty
{
  dispatch_assert_queue_V2(self->_stateQueue);
  if (!self->_dirty)
  {
    self->_dirty = 1;
    v3 = dispatch_time(0, 10000000000);
    writeQueue = self->_writeQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __62__FBPlistApplicationDataStoreRepository__stateQueue_markDirty__block_invoke;
    block[3] = &unk_1E783B580;
    block[4] = self;
    dispatch_after(v3, writeQueue, block);
  }
}

void __62__FBPlistApplicationDataStoreRepository__stateQueue_markDirty__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) _writeQueue_flushSynchronously];

  objc_autoreleasePoolPop(v2);
}

- (void)_writeQueue_flushSynchronously
{
  v18[1] = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_writeQueue);
  if (!self->_batchCount)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__1;
    v15 = __Block_byref_object_dispose__1;
    v16 = 0;
    stateQueue = self->_stateQueue;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __71__FBPlistApplicationDataStoreRepository__writeQueue_flushSynchronously__block_invoke;
    v10[3] = &unk_1E783C060;
    v10[4] = self;
    v10[5] = &v11;
    v10[6] = a2;
    dispatch_sync(stateQueue, v10);
    if (v12[5])
    {
      v5 = [(NSURL *)self->_storeURL path];
      v6 = [v5 stringByDeletingLastPathComponent];
      v7 = objc_alloc_init(MEMORY[0x1E696AC08]);
      if (([v7 fileExistsAtPath:v6] & 1) == 0)
      {
        [v7 createDirectoryAtPath:v6 withIntermediateDirectories:1 attributes:0 error:0];
        v17 = *MEMORY[0x1E696A3A0];
        v18[0] = *MEMORY[0x1E696A3A8];
        v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
        [v7 setAttributes:v8 ofItemAtPath:v6 error:0];
      }

      [v12[5] writeToFile:v5 options:268435457 error:0];
    }

    _Block_object_dispose(&v11, 8);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __71__FBPlistApplicationDataStoreRepository__writeQueue_flushSynchronously__block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v1 = *(a1 + 32);
  if (*(v1 + 24) == 1)
  {
    v4 = *(v1 + 16);
    v9 = 0;
    v5 = [MEMORY[0x1E696AE40] dataWithPropertyList:v4 format:200 options:0 error:&v9];
    v6 = v9;
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v5;

    if (!*(*(*(a1 + 40) + 8) + 40))
    {
      __71__FBPlistApplicationDataStoreRepository__writeQueue_flushSynchronously__block_invoke_cold_1(v6, a1, v2);
    }

    *(*v2 + 24) = 0;
  }
}

- (void)_notifyDelegateOfChangeForKeys:(id)a3 application:(id)a4
{
  v6 = a3;
  v7 = a4;
  calloutQueue = self->_calloutQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84__FBPlistApplicationDataStoreRepository__notifyDelegateOfChangeForKeys_application___block_invoke;
  block[3] = &unk_1E783B300;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(calloutQueue, block);
}

void __84__FBPlistApplicationDataStoreRepository__notifyDelegateOfChangeForKeys_application___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 objectChangedForKeys:*(a1 + 40) application:*(a1 + 48)];
}

- (void)_notifyDelegateOfStoreInvalidationForIdentifier:(id)a3
{
  v4 = a3;
  calloutQueue = self->_calloutQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __89__FBPlistApplicationDataStoreRepository__notifyDelegateOfStoreInvalidationForIdentifier___block_invoke;
  v7[3] = &unk_1E783B240;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(calloutQueue, v7);
}

void __89__FBPlistApplicationDataStoreRepository__notifyDelegateOfStoreInvalidationForIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 storeInvalidatedForIdentifier:*(a1 + 40)];
  }
}

- (FBApplicationDataStoreRepositoryDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithStorePath:(const char *)a1 .cold.1(const char *a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"The application store must have a valid URL path."];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    v13 = a2;
    v14 = 2114;
    v15 = @"FBPlistApplicationDataStoreRepository.m";
    v16 = 1024;
    v17 = 37;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_1A89DD000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v8, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void __71__FBPlistApplicationDataStoreRepository__writeQueue_flushSynchronously__block_invoke_cold_1(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to serialize application state: %@", a1];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v6 = NSStringFromSelector(*(a2 + 48));
    v7 = *a3;
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = *a3;
    *buf = 138544642;
    v12 = v6;
    v13 = 2114;
    v14 = v9;
    v15 = 2048;
    v16 = v10;
    v17 = 2114;
    v18 = @"FBPlistApplicationDataStoreRepository.m";
    v19 = 1024;
    v20 = 389;
    v21 = 2114;
    v22 = v5;
    _os_log_error_impl(&dword_1A89DD000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v5 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end