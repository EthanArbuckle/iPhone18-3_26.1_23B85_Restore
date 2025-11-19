@interface CAMBuffer
- (BOOL)isBufferEmpty;
- (BOOL)isEnabled;
- (CAMBuffer)init;
- (NSArray)bufferedValues;
- (id)_addObserver:(id)a3 onMainQueue:(BOOL)a4;
- (id)currentValue;
- (id)firstBufferedValue;
- (id)lastBufferedValue;
- (void)_bufferQueueEvaluateObservances;
- (void)_bufferQueueFulfillAndEvaluateWithChange:(id)a3;
- (void)_bufferQueueFulfillObservancesWithChange:(id)a3;
- (void)_bufferQueueSetupObservance:(id)a3;
- (void)_bufferQueueTeardownObservance:(id)a3;
- (void)_bufferQueueTeardownObservances:(id)a3;
- (void)_emitBufferedValues;
- (void)dealloc;
- (void)disableUntil:(id)a3;
- (void)disableUntilKeyPath:(id)a3 ofObject:(id)a4 evaluates:(id)a5;
- (void)disableUntilNotification:(id)a3 fromObject:(id)a4 usingNotificationCenter:(id)a5;
- (void)disableWhile:(id)a3;
- (void)disableWhileKeyPath:(id)a3 ofObject:(id)a4 evaluates:(id)a5;
- (void)disableWhileNotification:(id)a3 fromObject:(id)a4 usingNotificationCenter:(id)a5;
- (void)handleObservedNotification:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)push:(id)a3;
- (void)reevaluate;
- (void)removeObserverForKey:(id)a3;
- (void)replaceWith:(id)a3;
@end

@implementation CAMBuffer

- (CAMBuffer)init
{
  v12.receiver = self;
  v12.super_class = CAMBuffer;
  v2 = [(CAMBuffer *)&v12 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
    v4 = dispatch_queue_create("com.apple.camera.execution-buffer", v3);
    v5 = *(v2 + 2);
    *(v2 + 2) = v4;

    dispatch_queue_set_specific(*(v2 + 2), @"bufferQueueIdentification", @"bufferQueueIdentification", 0);
    v6 = *(v2 + 2);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __17__CAMBuffer_init__block_invoke;
    block[3] = &unk_1E76F77B0;
    v7 = v2;
    v11 = v7;
    dispatch_sync(v6, block);
    v8 = v7;
  }

  return v2;
}

uint64_t __17__CAMBuffer_init__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 8) = 1;
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;

  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = *(a1 + 32);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v9 = *(a1 + 32);
  v10 = *(v9 + 48);
  *(v9 + 48) = v8;

  return MEMORY[0x1EEE66BB8](v8, v10);
}

- (void)dealloc
{
  bufferQueue = self->__bufferQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __20__CAMBuffer_dealloc__block_invoke;
  block[3] = &unk_1E76F77B0;
  block[4] = self;
  dispatch_sync(bufferQueue, block);
  v4 = self->__bufferQueue;
  self->__bufferQueue = 0;

  v5.receiver = self;
  v5.super_class = CAMBuffer;
  [(CAMBuffer *)&v5 dealloc];
}

void __20__CAMBuffer_dealloc__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 32) removeAllObjects];
  [*(*(a1 + 32) + 40) removeAllObjects];
  v2 = *(a1 + 32);
  v3 = [v2 _bufferQueueObservances];
  [v2 _bufferQueueTeardownObservances:v3];
}

- (BOOL)isEnabled
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  if ([(CAMBuffer *)self _isBufferQueue])
  {
    v3 = [(CAMBuffer *)self isBufferQueueEnabled];
    *(v8 + 24) = v3;
  }

  else
  {
    v4 = [(CAMBuffer *)self _bufferQueue];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __22__CAMBuffer_isEnabled__block_invoke;
    v6[3] = &unk_1E76FAFF0;
    v6[4] = self;
    v6[5] = &v7;
    dispatch_sync(v4, v6);

    v3 = *(v8 + 24);
  }

  _Block_object_dispose(&v7, 8);
  return v3 & 1;
}

uint64_t __22__CAMBuffer_isEnabled__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isBufferQueueEnabled];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)_bufferQueueFulfillObservancesWithChange:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CAMBuffer *)self _bufferQueueObservances];
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        [v12 fulfillWithChange:{v4, v16}];
        v13 = [v12 isEnabled];
        v14 = [v12 isRemovedOnceEnabled];
        if (v13)
        {
          v15 = v14 == 0;
        }

        else
        {
          v15 = 1;
        }

        if (!v15)
        {
          [v6 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  [(CAMBuffer *)self _bufferQueueTeardownObservances:v6];
}

- (void)_bufferQueueEvaluateObservances
{
  v3 = [(CAMBuffer *)self _bufferQueueObservances];
  if ([v3 indexOfObjectPassingTest:&__block_literal_global_60] == 0x7FFFFFFFFFFFFFFFLL)
  {
    [(CAMBuffer *)self setBufferQueueEnabled:1];
    [(CAMBuffer *)self _emitBufferedValues];
  }

  else
  {
    [(CAMBuffer *)self setBufferQueueEnabled:0];
  }
}

uint64_t __44__CAMBuffer__bufferQueueEvaluateObservances__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v5 = a2;
  if ([v5 isFulfilled])
  {
    if ([v5 isFulfilled])
    {
      v6 = [v5 isEnabled] ^ 1;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 1;
  }

  *a4 = v6;

  return v6;
}

- (void)_bufferQueueFulfillAndEvaluateWithChange:(id)a3
{
  [(CAMBuffer *)self _bufferQueueFulfillObservancesWithChange:a3];

  [(CAMBuffer *)self _bufferQueueEvaluateObservances];
}

- (void)reevaluate
{
  v3 = [(CAMBuffer *)self _bufferQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __23__CAMBuffer_reevaluate__block_invoke;
  block[3] = &unk_1E76F77B0;
  block[4] = self;
  dispatch_sync(v3, block);
}

- (void)_bufferQueueSetupObservance:(id)a3
{
  v4 = a3;
  [v4 setupObservanceForBuffer:self];
  v5 = [(CAMBuffer *)self _bufferQueueObservances];
  [v5 addObject:v4];
}

- (void)_bufferQueueTeardownObservance:(id)a3
{
  v4 = a3;
  [v4 teardownObservanceForBuffer:self];
  v5 = [(CAMBuffer *)self _bufferQueueObservances];
  [v5 removeObject:v4];
}

- (void)_bufferQueueTeardownObservances:(id)a3
{
  v4 = a3;
  [v4 makeObjectsPerformSelector:sel_teardownObservanceForBuffer_ withObject:self];
  v5 = [(CAMBuffer *)self _bufferQueueObservances];
  [v5 removeObjectsInArray:v4];
}

- (void)disableWhile:(id)a3
{
  v4 = a3;
  v5 = [(CAMBuffer *)self _bufferQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __26__CAMBuffer_disableWhile___block_invoke;
  v7[3] = &unk_1E76F83B0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

void __26__CAMBuffer_disableWhile___block_invoke(uint64_t a1)
{
  v2 = [[CAMBufferObservance alloc] initWithPredicate:*(a1 + 40) removedOnceEnabled:0];
  [*(a1 + 32) _bufferQueueSetupObservance:v2];
  [*(a1 + 32) _bufferQueueFulfillAndEvaluateWithChange:0];
}

- (void)disableWhileKeyPath:(id)a3 ofObject:(id)a4 evaluates:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CAMBuffer *)self _bufferQueue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __52__CAMBuffer_disableWhileKeyPath_ofObject_evaluates___block_invoke;
  v15[3] = &unk_1E76FB560;
  v16 = v8;
  v17 = v9;
  v18 = self;
  v19 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_sync(v11, v15);
}

void __52__CAMBuffer_disableWhileKeyPath_ofObject_evaluates___block_invoke(uint64_t a1)
{
  v3 = [[CAMBufferKeyValueObserverObservance alloc] initWithKeyPath:*(a1 + 32) ofObject:*(a1 + 40) withPredicate:*(a1 + 56) removedOnceEnabled:0];
  [*(a1 + 48) _bufferQueueSetupObservance:v3];
  v2 = [[CAMBufferKeyValueObserverObservanceChange alloc] initWithKeyPath:*(a1 + 32) ofObject:*(a1 + 40) withChange:0];
  [*(a1 + 48) _bufferQueueFulfillAndEvaluateWithChange:v2];
}

- (void)disableWhileNotification:(id)a3 fromObject:(id)a4 usingNotificationCenter:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CAMBuffer *)self _bufferQueue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __73__CAMBuffer_disableWhileNotification_fromObject_usingNotificationCenter___block_invoke;
  v15[3] = &unk_1E76F8230;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v19 = self;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_sync(v11, v15);
}

void __73__CAMBuffer_disableWhileNotification_fromObject_usingNotificationCenter___block_invoke(uint64_t a1)
{
  v2 = [[CAMBufferNotificationObservance alloc] initWithNotification:*(a1 + 32) object:*(a1 + 40) center:*(a1 + 48) removeOnceEnabled:0];
  [*(a1 + 56) _bufferQueueSetupObservance:v2];
  [*(a1 + 56) _bufferQueueEvaluateObservances];
}

- (void)disableUntil:(id)a3
{
  v4 = a3;
  v5 = [(CAMBuffer *)self _bufferQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __26__CAMBuffer_disableUntil___block_invoke;
  v7[3] = &unk_1E76F83B0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

void __26__CAMBuffer_disableUntil___block_invoke(uint64_t a1)
{
  v2 = [[CAMBufferObservance alloc] initWithPredicate:*(a1 + 40) removedOnceEnabled:1];
  [*(a1 + 32) _bufferQueueSetupObservance:v2];
  [*(a1 + 32) _bufferQueueFulfillAndEvaluateWithChange:0];
}

- (void)disableUntilKeyPath:(id)a3 ofObject:(id)a4 evaluates:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CAMBuffer *)self _bufferQueue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __52__CAMBuffer_disableUntilKeyPath_ofObject_evaluates___block_invoke;
  v15[3] = &unk_1E76FB560;
  v16 = v8;
  v17 = v9;
  v18 = self;
  v19 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_sync(v11, v15);
}

void __52__CAMBuffer_disableUntilKeyPath_ofObject_evaluates___block_invoke(uint64_t a1)
{
  v3 = [[CAMBufferKeyValueObserverObservance alloc] initWithKeyPath:*(a1 + 32) ofObject:*(a1 + 40) withPredicate:*(a1 + 56) removedOnceEnabled:1];
  [*(a1 + 48) _bufferQueueSetupObservance:v3];
  v2 = [[CAMBufferKeyValueObserverObservanceChange alloc] initWithKeyPath:*(a1 + 32) ofObject:*(a1 + 40) withChange:0];
  [*(a1 + 48) _bufferQueueFulfillAndEvaluateWithChange:v2];
}

- (void)disableUntilNotification:(id)a3 fromObject:(id)a4 usingNotificationCenter:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CAMBuffer *)self _bufferQueue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __73__CAMBuffer_disableUntilNotification_fromObject_usingNotificationCenter___block_invoke;
  v15[3] = &unk_1E76F8230;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v19 = self;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_sync(v11, v15);
}

void __73__CAMBuffer_disableUntilNotification_fromObject_usingNotificationCenter___block_invoke(uint64_t a1)
{
  v2 = [[CAMBufferNotificationObservance alloc] initWithNotification:*(a1 + 32) object:*(a1 + 40) center:*(a1 + 48) removeOnceEnabled:1];
  [*(a1 + 56) _bufferQueueSetupObservance:v2];
  [*(a1 + 56) _bufferQueueEvaluateObservances];
}

- (void)_emitBufferedValues
{
  v35 = *MEMORY[0x1E69E9840];
  v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = [(CAMBuffer *)self _bufferQueueBufferedValues];
  v20 = [(CAMBuffer *)self _bufferQueueObservers];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v3;
  v19 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v19)
  {
    v18 = *v30;
    v17 = self;
LABEL_3:
    v4 = 0;
    while (1)
    {
      if (*v30 != v18)
      {
        objc_enumerationMutation(obj);
      }

      v5 = *(*(&v29 + 1) + 8 * v4);
      if (![(CAMBuffer *)self isBufferQueueEnabled])
      {
        break;
      }

      v22 = v4;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v6 = v20;
      v7 = [v6 countByEnumeratingWithState:&v25 objects:v33 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v26;
        do
        {
          v10 = 0;
          do
          {
            if (*v26 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = [v6 objectForKeyedSubscript:*(*(&v25 + 1) + 8 * v10)];
            v12 = _Block_copy(v11);
            v13 = objc_getAssociatedObject(v12, _shouldEmitValuesOnMainQueueKey);
            v14 = [v13 BOOLValue];

            if (v14)
            {
              block[0] = MEMORY[0x1E69E9820];
              block[1] = 3221225472;
              block[2] = __32__CAMBuffer__emitBufferedValues__block_invoke;
              block[3] = &unk_1E76F83B0;
              v15 = v11;
              block[4] = v5;
              v24 = v15;
              dispatch_async(MEMORY[0x1E69E96A0], block);
            }

            else
            {
              v11[2](v11, v5);
            }

            ++v10;
          }

          while (v8 != v10);
          v8 = [v6 countByEnumeratingWithState:&v25 objects:v33 count:16];
        }

        while (v8);
      }

      self = v17;
      [(CAMBuffer *)v17 setBufferQueueCurrentValue:v5];
      [v21 addObject:v5];
      v4 = v22 + 1;
      if (v22 + 1 == v19)
      {
        v19 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
        if (v19)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  [obj removeObjectsInArray:v21];
}

- (void)push:(id)a3
{
  v4 = [a3 copyWithZone:0];
  v5 = [(CAMBuffer *)self _bufferQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __18__CAMBuffer_push___block_invoke;
  v7[3] = &unk_1E76F7960;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

void __18__CAMBuffer_push___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _bufferQueueBufferedValues];
  [v2 addObject:*(a1 + 40)];
  if ([*(a1 + 32) isBufferQueueEnabled])
  {
    [*(a1 + 32) _emitBufferedValues];
  }
}

- (void)replaceWith:(id)a3
{
  v4 = [a3 copyWithZone:0];
  v5 = [(CAMBuffer *)self _bufferQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __25__CAMBuffer_replaceWith___block_invoke;
  v7[3] = &unk_1E76F7960;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

void __25__CAMBuffer_replaceWith___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _bufferQueueBufferedValues];
  [v2 removeAllObjects];
  [v2 addObject:*(a1 + 40)];
  if ([*(a1 + 32) isBufferQueueEnabled])
  {
    [*(a1 + 32) _emitBufferedValues];
  }
}

- (id)currentValue
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__31;
  v13 = __Block_byref_object_dispose__31;
  v14 = 0;
  if ([(CAMBuffer *)self _isBufferQueue])
  {
    v3 = [(CAMBuffer *)self bufferQueueCurrentValue];
    v4 = v10[5];
    v10[5] = v3;
  }

  else
  {
    v5 = [(CAMBuffer *)self _bufferQueue];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __25__CAMBuffer_currentValue__block_invoke;
    v8[3] = &unk_1E76FAFF0;
    v8[4] = self;
    v8[5] = &v9;
    dispatch_sync(v5, v8);
  }

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

uint64_t __25__CAMBuffer_currentValue__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) bufferQueueCurrentValue];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (BOOL)isBufferEmpty
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(CAMBuffer *)self _bufferQueue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __26__CAMBuffer_isBufferEmpty__block_invoke;
  v5[3] = &unk_1E76FAFF0;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

void __26__CAMBuffer_isBufferEmpty__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _bufferQueueBufferedValues];
  *(*(*(a1 + 40) + 8) + 24) = [v2 count] == 0;
}

- (id)firstBufferedValue
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__31;
  v11 = __Block_byref_object_dispose__31;
  v12 = 0;
  v3 = [(CAMBuffer *)self _bufferQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __31__CAMBuffer_firstBufferedValue__block_invoke;
  v6[3] = &unk_1E76FAFF0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __31__CAMBuffer_firstBufferedValue__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) _bufferQueueBufferedValues];
  v2 = [v5 firstObject];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)lastBufferedValue
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__31;
  v11 = __Block_byref_object_dispose__31;
  v12 = 0;
  v3 = [(CAMBuffer *)self _bufferQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __30__CAMBuffer_lastBufferedValue__block_invoke;
  v6[3] = &unk_1E76FAFF0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __30__CAMBuffer_lastBufferedValue__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) _bufferQueueBufferedValues];
  v2 = [v5 lastObject];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (NSArray)bufferedValues
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__31;
  v11 = __Block_byref_object_dispose__31;
  v12 = 0;
  v3 = [(CAMBuffer *)self _bufferQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __27__CAMBuffer_bufferedValues__block_invoke;
  v6[3] = &unk_1E76FAFF0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __27__CAMBuffer_bufferedValues__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) _bufferQueueBufferedValues];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)_addObserver:(id)a3 onMainQueue:(BOOL)a4
{
  v4 = a4;
  v6 = MEMORY[0x1E696AFB0];
  v7 = a3;
  v8 = [v6 UUID];
  v9 = [v8 UUIDString];

  v10 = [v7 copy];
  v11 = _Block_copy(v10);
  v12 = _shouldEmitValuesOnMainQueueKey;
  v13 = [MEMORY[0x1E696AD98] numberWithBool:v4];
  objc_setAssociatedObject(v11, v12, v13, 1);

  v14 = [(CAMBuffer *)self _bufferQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__CAMBuffer__addObserver_onMainQueue___block_invoke;
  block[3] = &unk_1E76FCD08;
  block[4] = self;
  v22 = v10;
  v15 = v9;
  v21 = v15;
  v16 = v10;
  dispatch_sync(v14, block);

  v17 = v21;
  v18 = v15;

  return v15;
}

void __38__CAMBuffer__addObserver_onMainQueue___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) _bufferQueueObservers];
  v2 = _Block_copy(*(a1 + 48));
  [v3 setObject:v2 forKey:*(a1 + 40)];
}

- (void)removeObserverForKey:(id)a3
{
  v4 = a3;
  v5 = [(CAMBuffer *)self _bufferQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __34__CAMBuffer_removeObserverForKey___block_invoke;
  v7[3] = &unk_1E76F7960;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

void __34__CAMBuffer_removeObserverForKey___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _bufferQueueObservers];
  [v2 removeObjectForKey:*(a1 + 40)];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [(CAMBuffer *)self _bufferQueue];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __60__CAMBuffer_observeValueForKeyPath_ofObject_change_context___block_invoke;
  v16[3] = &unk_1E76F8230;
  v17 = v9;
  v18 = v10;
  v19 = v11;
  v20 = self;
  v13 = v11;
  v14 = v10;
  v15 = v9;
  dispatch_sync(v12, v16);
}

void __60__CAMBuffer_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  v2 = [[CAMBufferKeyValueObserverObservanceChange alloc] initWithKeyPath:*(a1 + 32) ofObject:*(a1 + 40) withChange:*(a1 + 48)];
  [*(a1 + 56) _bufferQueueFulfillAndEvaluateWithChange:v2];
}

- (void)handleObservedNotification:(id)a3
{
  v4 = a3;
  v5 = [(CAMBuffer *)self _bufferQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__CAMBuffer_handleObservedNotification___block_invoke;
  v7[3] = &unk_1E76F7960;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(v5, v7);
}

void __40__CAMBuffer_handleObservedNotification___block_invoke(uint64_t a1)
{
  v2 = [CAMBufferNotificationObservanceChange alloc];
  v3 = [*(a1 + 32) name];
  v4 = [*(a1 + 32) object];
  v5 = [(CAMBufferNotificationObservanceChange *)v2 initWithNotification:v3 object:v4];

  [*(a1 + 40) _bufferQueueFulfillAndEvaluateWithChange:v5];
}

@end