@interface CAMObservable
- (CAMObservable)init;
- (id)mutableChangeObject;
- (void)_applyPendingChanges;
- (void)_didChange;
- (void)_observersQueue_copyChangeObserversForWriteIfNeeded;
- (void)_publishChanges;
- (void)_willChange;
- (void)enumerateObserversUsingBlock:(id)a3;
- (void)performChanges:(id)a3;
- (void)registerChangeObserver:(id)a3 context:(void *)a4;
- (void)unregisterChangeObserver:(id)a3 context:(void *)a4;
@end

@implementation CAMObservable

- (CAMObservable)init
{
  v6.receiver = self;
  v6.super_class = CAMObservable;
  v2 = [(CAMObservable *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.camera.observable.internal-queue", 0);
    observersQueue = v2->_observersQueue;
    v2->_observersQueue = v3;

    v2->_currentChange = 0;
  }

  return v2;
}

- (void)performChanges:(id)a3
{
  v4 = a3;
  v12 = v4;
  if (self->_isEnumeratingObservers)
  {
    pendingChangeBlocks = self->_pendingChangeBlocks;
    if (pendingChangeBlocks)
    {
      v6 = [v4 copy];
      [(NSMutableArray *)pendingChangeBlocks addObject:v6];
    }

    else
    {
      v8 = MEMORY[0x1E695DF70];
      v9 = [v4 copy];
      v10 = [v8 arrayWithObject:v9];
      v11 = self->_pendingChangeBlocks;
      self->_pendingChangeBlocks = v10;
    }
  }

  else
  {
    [(CAMObservable *)self _willChange];
    v7 = [(CAMObservable *)self mutableChangeObject];
    v12[2](v12, v7);

    [(CAMObservable *)self _didChange];
  }
}

- (void)registerChangeObserver:(id)a3 context:(void *)a4
{
  v6 = a3;
  observersQueue = self->_observersQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__CAMObservable_registerChangeObserver_context___block_invoke;
  block[3] = &unk_1E76F97F0;
  block[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  dispatch_sync(observersQueue, block);
}

void __48__CAMObservable_registerChangeObserver_context___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _observersQueue_copyChangeObserversForWriteIfNeeded];
  v2 = [*(*(a1 + 32) + 64) objectForKey:*(a1 + 40)];
  if (v2)
  {
    __48__CAMObservable_registerChangeObserver_context___block_invoke_cold_1(v2, a1, &v8);
    v6 = v8;
  }

  else
  {
    if (!*(*(a1 + 32) + 64))
    {
      v3 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
      v4 = *(a1 + 32);
      v5 = *(v4 + 64);
      *(v4 + 64) = v3;
    }

    v7 = [objc_alloc(MEMORY[0x1E696AE08]) initWithOptions:256];
    [v7 addPointer:*(a1 + 48)];
    [*(*(a1 + 32) + 64) setObject:v7 forKey:*(a1 + 40)];
    v6 = v7;
  }
}

- (void)unregisterChangeObserver:(id)a3 context:(void *)a4
{
  v6 = a3;
  observersQueue = self->_observersQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__CAMObservable_unregisterChangeObserver_context___block_invoke;
  block[3] = &unk_1E76F97F0;
  block[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  dispatch_sync(observersQueue, block);
}

- (id)mutableChangeObject
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = MEMORY[0x1E696AEC0];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (void)enumerateObserversUsingBlock:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  isEnumeratingObservers = self->_isEnumeratingObservers;
  self->_isEnumeratingObservers = 1;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__32;
  v25 = __Block_byref_object_dispose__32;
  v26 = 0;
  observersQueue = self->_observersQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__CAMObservable_enumerateObserversUsingBlock___block_invoke;
  block[3] = &unk_1E76FAFF0;
  block[4] = self;
  block[5] = &v21;
  dispatch_sync(observersQueue, block);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [v22[5] keyEnumerator];
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v27 count:16];
  if (v7)
  {
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [v22[5] objectForKey:v10];
        for (j = 0; j < [v11 count]; ++j)
        {
          v4[2](v4, v10, [v11 pointerAtIndex:j]);
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v16 objects:v27 count:16];
    }

    while (v7);
  }

  v13 = self->_observersQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __46__CAMObservable_enumerateObserversUsingBlock___block_invoke_2;
  v15[3] = &unk_1E76F77B0;
  v15[4] = self;
  dispatch_sync(v13, v15);
  self->_isEnumeratingObservers = isEnumeratingObservers;
  _Block_object_dispose(&v21, 8);
}

- (void)_willChange
{
  nestedChanges = self->_nestedChanges;
  if (!nestedChanges)
  {
    [(CAMObservable *)self willPerformChanges];
    nestedChanges = self->_nestedChanges;
  }

  self->_nestedChanges = nestedChanges + 1;
}

- (void)_didChange
{
  nestedChanges = self->_nestedChanges;
  if (nestedChanges == 1)
  {
    [(CAMObservable *)self didPerformChanges];
    nestedChanges = self->_nestedChanges;
  }

  v4 = nestedChanges - 1;
  self->_nestedChanges = v4;
  if (!v4)
  {
    if (self->_currentChange)
    {
      [(CAMObservable *)self _publishChanges];
      [(CAMObservable *)self didPublishChanges];
      self->_currentChange = 0;
    }

    [(CAMObservable *)self _applyPendingChanges];
  }
}

- (void)_publishChanges
{
  currentChange = self->_currentChange;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __32__CAMObservable__publishChanges__block_invoke;
  v3[3] = &unk_1E76FE750;
  v3[4] = self;
  v3[5] = currentChange;
  [(CAMObservable *)self enumerateObserversUsingBlock:v3];
}

- (void)_applyPendingChanges
{
  pendingChangeBlocks = self->_pendingChangeBlocks;
  numAppliedPendingChanges = self->_numAppliedPendingChanges;
  self->_numAppliedPendingChanges = numAppliedPendingChanges + 1;
  if (pendingChangeBlocks)
  {
    v5 = pendingChangeBlocks;
    v6 = self->_pendingChangeBlocks;
    self->_pendingChangeBlocks = 0;

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __37__CAMObservable__applyPendingChanges__block_invoke;
    v8[3] = &unk_1E76FE778;
    v9 = v5;
    v7 = v5;
    [(CAMObservable *)self performChanges:v8];

    numAppliedPendingChanges = self->_numAppliedPendingChanges - 1;
  }

  self->_numAppliedPendingChanges = numAppliedPendingChanges;
}

void __37__CAMObservable__applyPendingChanges__block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        (*(*(*(&v9 + 1) + 8 * v8) + 16))(*(*(&v9 + 1) + 8 * v8));
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)_observersQueue_copyChangeObserversForWriteIfNeeded
{
  v18 = *MEMORY[0x1E69E9840];
  if (self->_observersQueue_shouldCopyChangeObserversOnWrite)
  {
    v3 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v4 = [(NSMapTable *)self->_observersQueue_changeObserversWithContexts keyEnumerator];
    v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v13 + 1) + 8 * i);
          v10 = [(NSMapTable *)self->_observersQueue_changeObserversWithContexts objectForKey:v9];
          v11 = [v10 copy];

          [(NSMapTable *)v3 setObject:v11 forKey:v9];
        }

        v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v6);
    }

    observersQueue_changeObserversWithContexts = self->_observersQueue_changeObserversWithContexts;
    self->_observersQueue_changeObserversWithContexts = v3;

    self->_observersQueue_shouldCopyChangeObserversOnWrite = 0;
  }
}

uint64_t __50__CAMObservable_unregisterChangeObserver_context___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _observersQueue_copyChangeObserversForWriteIfNeeded];
  v7 = [*(*(a1 + 32) + 64) objectForKey:*(a1 + 40)];
  v2 = [v7 count];
  v3 = v7;
  if (v2)
  {
    v4 = v2;
    v5 = 0;
    while (1)
    {
      v2 = [v3 pointerAtIndex:v5];
      if (v2 == *(a1 + 48))
      {
        break;
      }

      ++v5;
      v3 = v7;
      if (v4 == v5)
      {
        goto LABEL_7;
      }
    }

    v2 = [v7 removePointerAtIndex:v5];
    v3 = v7;
  }

LABEL_7:
  if (v3)
  {
    v2 = [v3 count];
    v3 = v7;
    if (!v2)
    {
      v2 = [*(*(a1 + 32) + 64) removeObjectForKey:*(a1 + 40)];
      v3 = v7;
    }
  }

  return MEMORY[0x1EEE66BB8](v2, v3);
}

uint64_t __48__CAMObservable_registerChangeObserver_context___block_invoke_cold_1(void *a1, uint64_t a2, void *a3)
{
  v6 = [a1 count];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    while (1)
    {
      result = [a1 pointerAtIndex:v8];
      v10 = *(a2 + 48);
      if (result == v10)
      {
        break;
      }

      if (v7 == ++v8)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
    v10 = *(a2 + 48);
LABEL_7:
    result = [a1 addPointer:v10];
  }

  *a3 = a1;
  return result;
}

@end