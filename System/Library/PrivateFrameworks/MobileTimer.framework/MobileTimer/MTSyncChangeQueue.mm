@interface MTSyncChangeQueue
- (BOOL)hasPendingChanges;
- (MTSyncChangeQueue)initWithChangeStore:(id)store;
- (id)_resolveChange:(id)change;
- (id)_resolveChange:(id)change resolutionHandler:(id)handler;
- (id)pendingChanges;
- (id)resolveChange:(id)change;
- (void)_enqueueAction:(id)action;
- (void)_enqueueChange:(id)change changeCompareBlock:(id)block;
- (void)dequeueChanges:(id)changes;
- (void)enqueueChange:(id)change;
- (void)loadChanges;
- (void)performBlockOnceChangesAreLoaded:(id)loaded async:(BOOL)async;
- (void)persistChanges;
- (void)removePendingChanges;
@end

@implementation MTSyncChangeQueue

- (MTSyncChangeQueue)initWithChangeStore:(id)store
{
  storeCopy = store;
  v17.receiver = self;
  v17.super_class = MTSyncChangeQueue;
  v6 = [(MTSyncChangeQueue *)&v17 init];
  if (v6)
  {
    v7 = dispatch_queue_attr_make_with_qos_class(0, +[MTScheduler defaultPriority], -1);
    v8 = dispatch_queue_create("com.apple.MTSyncChangeQueue.serial", v7);
    v9 = *(v6 + 1);
    *(v6 + 1) = v8;

    v10 = [MEMORY[0x1E69B3790] schedulerWithDispatchQueue:*(v6 + 1)];
    v11 = *(v6 + 2);
    *(v6 + 2) = v10;

    objc_storeStrong(v6 + 4, store);
    v12 = objc_opt_new();
    v13 = *(v6 + 5);
    *(v6 + 5) = v12;

    v14 = dispatch_group_create();
    v15 = *(v6 + 3);
    *(v6 + 3) = v14;

    dispatch_group_enter(*(v6 + 3));
  }

  return v6;
}

- (void)loadChanges
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = MTLogForCategory(6);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_INFO, "%{public}@ loading changes", buf, 0xCu);
  }

  loadChanges = [(MTSyncChangeStore *)self->_changeStore loadChanges];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __32__MTSyncChangeQueue_loadChanges__block_invoke;
  v7[3] = &unk_1E7B0ECA0;
  v7[4] = self;
  v5 = [loadChanges addSuccessBlock:v7];

  v6 = *MEMORY[0x1E69E9840];
}

void __32__MTSyncChangeQueue_loadChanges__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __32__MTSyncChangeQueue_loadChanges__block_invoke_2;
  v7[3] = &unk_1E7B0C928;
  v7[4] = v4;
  v8 = v3;
  v6 = v3;
  [v5 performBlock:v7];
}

void __32__MTSyncChangeQueue_loadChanges__block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = MTLogForCategory(6);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) count];
    v6 = 138543618;
    v7 = v3;
    v8 = 2048;
    v9 = v4;
    _os_log_impl(&dword_1B1F9F000, v2, OS_LOG_TYPE_INFO, "%{public}@ loaded %lu changes", &v6, 0x16u);
  }

  [*(*(a1 + 32) + 40) addObjectsFromArray:*(a1 + 40)];
  dispatch_group_leave(*(*(a1 + 32) + 24));
  v5 = *MEMORY[0x1E69E9840];
}

- (void)performBlockOnceChangesAreLoaded:(id)loaded async:(BOOL)async
{
  changesLoaded = self->_changesLoaded;
  if (async)
  {
    dispatch_group_notify(changesLoaded, self->_serialQueue, loaded);
  }

  else
  {
    loadedCopy = loaded;
    dispatch_group_wait(changesLoaded, 0xFFFFFFFFFFFFFFFFLL);
    dispatch_sync(self->_serialQueue, loadedCopy);
  }
}

- (void)persistChanges
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __35__MTSyncChangeQueue_persistChanges__block_invoke;
  v2[3] = &unk_1E7B0C9D8;
  v2[4] = self;
  [(MTSyncChangeQueue *)self performBlockOnceChangesAreLoaded:v2 async:1];
}

void __35__MTSyncChangeQueue_persistChanges__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 32);
  v3 = [*(v1 + 40) copy];
  [v2 persistChanges:v3];
}

- (void)enqueueChange:(id)change
{
  changeCopy = change;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __35__MTSyncChangeQueue_enqueueChange___block_invoke;
  v6[3] = &unk_1E7B0C928;
  v7 = changeCopy;
  selfCopy = self;
  v5 = changeCopy;
  [(MTSyncChangeQueue *)self performBlockOnceChangesAreLoaded:v6 async:1];
}

uint64_t __35__MTSyncChangeQueue_enqueueChange___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  if ([*(a1 + 32) syncType])
  {
    v3 = MTLogForCategory(6);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __35__MTSyncChangeQueue_enqueueChange___block_invoke_cold_1(a1, v2, v3);
    }
  }

  else
  {
    [*(a1 + 40) _enqueueAction:*(a1 + 32)];
  }

  return [*(a1 + 40) persistChanges];
}

- (void)_enqueueAction:(id)action
{
  v15 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  v5 = MTLogForCategory(6);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    selfCopy = self;
    v13 = 2114;
    v14 = actionCopy;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_INFO, "%{public}@ enqueuing action %{public}@", buf, 0x16u);
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __36__MTSyncChangeQueue__enqueueAction___block_invoke;
  v8[3] = &unk_1E7B10238;
  v9 = actionCopy;
  selfCopy2 = self;
  v6 = actionCopy;
  [(MTSyncChangeQueue *)self _enqueueChange:v6 changeCompareBlock:v8];

  v7 = *MEMORY[0x1E69E9840];
}

uint64_t __36__MTSyncChangeQueue__enqueueAction___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 syncType] && (objc_msgSend(*(a1 + 32), "syncIdentifier"), v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "syncIdentifier"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v4, "isEqualToString:", v5), v5, v4, (v6 & 1) == 0))
  {
    v8 = MTLogForCategory(6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 40);
      v12 = 138543618;
      v13 = v9;
      v14 = 2114;
      v15 = v3;
      _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_INFO, "%{public}@ jumping over pending change %{public}@", &v12, 0x16u);
    }

    v7 = 2;
  }

  else
  {
    v7 = 4;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v7;
}

- (void)_enqueueChange:(id)change changeCompareBlock:(id)block
{
  v54 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  blockCopy = block;
  v7 = 0x1E695D000uLL;
  v8 = objc_opt_new();
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  reverseObjectEnumerator = [(NSMutableArray *)self->_changeQueue reverseObjectEnumerator];
  v10 = [reverseObjectEnumerator countByEnumeratingWithState:&v42 objects:v53 count:16];
  if (!v10)
  {

LABEL_34:
    [v8 addObject:{changeCopy, v35}];
    goto LABEL_35;
  }

  v12 = v10;
  v13 = 0;
  v14 = *v43;
  v15 = 1;
  *&v11 = 138543874;
  v35 = v11;
  do
  {
    v16 = reverseObjectEnumerator;
    v17 = 0;
    do
    {
      if (*v43 != v14)
      {
        objc_enumerationMutation(v16);
      }

      v18 = *(*(&v42 + 1) + 8 * v17);
      if ((v15 & 1) == 0)
      {
        goto LABEL_21;
      }

      v19 = blockCopy[2](blockCopy, *(*(&v42 + 1) + 8 * v17));
      v13 = v19;
      v15 = 1;
      if (v19 <= 2)
      {
        if (!v19)
        {
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler handleFailureInMethod:a2 object:self file:@"MTSyncChangeQueue.m" lineNumber:150 description:@"Undetermined enqueue result returned"];

LABEL_17:
          v15 = 1;
          goto LABEL_23;
        }

        if (v19 != 1)
        {
          if (v19 != 2)
          {
            goto LABEL_23;
          }

          [v8 addObject:v18];
          goto LABEL_17;
        }

        [v8 addObject:changeCopy];
LABEL_21:
        [v8 addObject:{v18, v35}];
LABEL_22:
        v15 = 0;
        goto LABEL_23;
      }

      switch(v19)
      {
        case 3:
          v21 = [v18 merge:changeCopy];
          if (v21)
          {
            v22 = v8;
            v23 = v21;
          }

          else
          {
            v24 = MTLogForCategory(6);
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              *buf = v35;
              selfCopy = self;
              v49 = 2114;
              v50 = changeCopy;
              v51 = 2114;
              v52 = v18;
              _os_log_error_impl(&dword_1B1F9F000, v24, OS_LOG_TYPE_ERROR, "%{public}@ unable to merge %{public}@ into %{public}@", buf, 0x20u);
            }

            v22 = v8;
            v23 = v18;
          }

          [v22 addObject:{v23, v35}];

          v15 = 0;
          v13 = 3;
          break;
        case 5:
          goto LABEL_21;
        case 6:
          goto LABEL_22;
      }

LABEL_23:
      ++v17;
    }

    while (v12 != v17);
    reverseObjectEnumerator = v16;
    v25 = [v16 countByEnumeratingWithState:&v42 objects:v53 count:16];
    v12 = v25;
  }

  while (v25);

  v7 = 0x1E695D000;
  if (v13 <= 4 && ((1 << v13) & 0x15) != 0)
  {
    goto LABEL_34;
  }

LABEL_35:
  v26 = *(v7 + 3952);
  v27 = objc_opt_new();
  changeQueue = self->_changeQueue;
  self->_changeQueue = v27;

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  reverseObjectEnumerator2 = [v8 reverseObjectEnumerator];
  v30 = [reverseObjectEnumerator2 countByEnumeratingWithState:&v38 objects:v46 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v39;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v39 != v32)
        {
          objc_enumerationMutation(reverseObjectEnumerator2);
        }

        [(NSMutableArray *)self->_changeQueue addObject:*(*(&v38 + 1) + 8 * i), v35];
      }

      v31 = [reverseObjectEnumerator2 countByEnumeratingWithState:&v38 objects:v46 count:16];
    }

    while (v31);
  }

  v34 = *MEMORY[0x1E69E9840];
}

- (void)dequeueChanges:(id)changes
{
  changesCopy = changes;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __36__MTSyncChangeQueue_dequeueChanges___block_invoke;
  v6[3] = &unk_1E7B0C928;
  v6[4] = self;
  v7 = changesCopy;
  v5 = changesCopy;
  [(MTSyncChangeQueue *)self performBlockOnceChangesAreLoaded:v6 async:1];
}

uint64_t __36__MTSyncChangeQueue_dequeueChanges___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = MTLogForCategory(6);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v7 = 138543618;
    v8 = v3;
    v9 = 2114;
    v10 = v4;
    _os_log_impl(&dword_1B1F9F000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ dequeing changes %{public}@", &v7, 0x16u);
  }

  [*(*(a1 + 32) + 40) removeObjectsInArray:*(a1 + 40)];
  result = [*(a1 + 32) persistChanges];
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)hasPendingChanges
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __38__MTSyncChangeQueue_hasPendingChanges__block_invoke;
  v4[3] = &unk_1E7B0CAC0;
  v4[4] = self;
  v4[5] = &v5;
  [(MTSyncChangeQueue *)self performBlockOnceChangesAreLoaded:v4 async:0];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __38__MTSyncChangeQueue_hasPendingChanges__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 40) count];
  *(*(*(a1 + 40) + 8) + 24) = result != 0;
  return result;
}

- (id)pendingChanges
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__17;
  v9 = __Block_byref_object_dispose__17;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __35__MTSyncChangeQueue_pendingChanges__block_invoke;
  v4[3] = &unk_1E7B0CAC0;
  v4[4] = self;
  v4[5] = &v5;
  [(MTSyncChangeQueue *)self performBlockOnceChangesAreLoaded:v4 async:0];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __35__MTSyncChangeQueue_pendingChanges__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 40) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (void)removePendingChanges
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __41__MTSyncChangeQueue_removePendingChanges__block_invoke;
  v2[3] = &unk_1E7B0C9D8;
  v2[4] = self;
  [(MTSyncChangeQueue *)self performBlockOnceChangesAreLoaded:v2 async:1];
}

uint64_t __41__MTSyncChangeQueue_removePendingChanges__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 40) removeAllObjects];
  v2 = *(a1 + 32);

  return [v2 persistChanges];
}

- (id)resolveChange:(id)change
{
  changeCopy = change;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__17;
  v15 = __Block_byref_object_dispose__17;
  v16 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __35__MTSyncChangeQueue_resolveChange___block_invoke;
  v8[3] = &unk_1E7B0CB10;
  v10 = &v11;
  v8[4] = self;
  v5 = changeCopy;
  v9 = v5;
  [(MTSyncChangeQueue *)self performBlockOnceChangesAreLoaded:v8 async:0];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

uint64_t __35__MTSyncChangeQueue_resolveChange___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _resolveChange:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(a1 + 32);

  return [v5 persistChanges];
}

- (id)_resolveChange:(id)change
{
  v14 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  v5 = MTLogForCategory(6);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    selfCopy = self;
    v12 = 2114;
    v13 = changeCopy;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_INFO, "%{public}@ resolving incoming change %{public}@", buf, 0x16u);
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __36__MTSyncChangeQueue__resolveChange___block_invoke;
  v9[3] = &unk_1E7B10260;
  v9[4] = self;
  v6 = [(MTSyncChangeQueue *)self _resolveChange:changeCopy resolutionHandler:v9];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

uint64_t __36__MTSyncChangeQueue__resolveChange___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if ([v6 conflicts:v5])
  {
    v7 = MTLogForCategory(6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v17 = 138543874;
      v18 = v8;
      v19 = 2114;
      v20 = v5;
      v21 = 2114;
      v22 = v6;
      _os_log_impl(&dword_1B1F9F000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ incoming change %{public}@ conflicts with pending change %{public}@", &v17, 0x20u);
    }

    v9 = [v6 preferred:v5];
    v10 = MTLogForCategory(6);
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (v9 == v5)
    {
      if (v11)
      {
        v14 = *(a1 + 32);
        v17 = 138543618;
        v18 = v14;
        v19 = 2114;
        v20 = v6;
        _os_log_impl(&dword_1B1F9F000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ dropping conflicting pending change %{public}@", &v17, 0x16u);
      }

      v13 = 4;
    }

    else
    {
      if (v11)
      {
        v12 = *(a1 + 32);
        v17 = 138543618;
        v18 = v12;
        v19 = 2114;
        v20 = v5;
        _os_log_impl(&dword_1B1F9F000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ dropping conflicting incoming change %{public}@", &v17, 0x16u);
      }

      v13 = 5;
    }
  }

  else
  {
    v13 = 2;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v13;
}

- (id)_resolveChange:(id)change resolutionHandler:(id)handler
{
  v30 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  handlerCopy = handler;
  v8 = objc_opt_new();
  v9 = changeCopy;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  selfCopy = self;
  v11 = self->_changeQueue;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
  v23 = v9;
  if (v12)
  {
    v13 = v12;
    v14 = *v26;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v26 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v25 + 1) + 8 * i);
        if (!v9)
        {
LABEL_10:
          [v8 addObject:{v16, v23}];
          continue;
        }

        v17 = handlerCopy[2](handlerCopy, v9, *(*(&v25 + 1) + 8 * i));
        switch(v17)
        {
          case 5:
            [v8 addObject:v16];

            v9 = 0;
            break;
          case 4:
            continue;
          case 2:
            goto LABEL_10;
          default:
            currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
            [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"MTSyncChangeQueue.m" lineNumber:262 description:@"Invalid conflict result returned"];

            break;
        }
      }

      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v13);
  }

  v19 = [v8 mutableCopy];
  changeQueue = selfCopy->_changeQueue;
  selfCopy->_changeQueue = v19;

  v21 = *MEMORY[0x1E69E9840];

  return v9;
}

void __35__MTSyncChangeQueue_enqueueChange___block_invoke_cold_1(uint64_t a1, uint64_t *a2, os_log_t log)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 40);
  v4 = *a2;
  v6 = 138543618;
  v7 = v3;
  v8 = 2114;
  v9 = v4;
  _os_log_error_impl(&dword_1B1F9F000, log, OS_LOG_TYPE_ERROR, "%{public}@ unsupported change type %{public}@", &v6, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

@end