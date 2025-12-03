@interface CAMBuffer
- (BOOL)isBufferEmpty;
- (BOOL)isEnabled;
- (CAMBuffer)init;
- (NSArray)bufferedValues;
- (id)_addObserver:(id)observer onMainQueue:(BOOL)queue;
- (id)currentValue;
- (id)firstBufferedValue;
- (id)lastBufferedValue;
- (void)_bufferQueueEvaluateObservances;
- (void)_bufferQueueFulfillAndEvaluateWithChange:(id)change;
- (void)_bufferQueueFulfillObservancesWithChange:(id)change;
- (void)_bufferQueueSetupObservance:(id)observance;
- (void)_bufferQueueTeardownObservance:(id)observance;
- (void)_bufferQueueTeardownObservances:(id)observances;
- (void)_emitBufferedValues;
- (void)dealloc;
- (void)disableUntil:(id)until;
- (void)disableUntilKeyPath:(id)path ofObject:(id)object evaluates:(id)evaluates;
- (void)disableUntilNotification:(id)notification fromObject:(id)object usingNotificationCenter:(id)center;
- (void)disableWhile:(id)while;
- (void)disableWhileKeyPath:(id)path ofObject:(id)object evaluates:(id)evaluates;
- (void)disableWhileNotification:(id)notification fromObject:(id)object usingNotificationCenter:(id)center;
- (void)handleObservedNotification:(id)notification;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)push:(id)push;
- (void)reevaluate;
- (void)removeObserverForKey:(id)key;
- (void)replaceWith:(id)with;
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
    isBufferQueueEnabled = [(CAMBuffer *)self isBufferQueueEnabled];
    *(v8 + 24) = isBufferQueueEnabled;
  }

  else
  {
    _bufferQueue = [(CAMBuffer *)self _bufferQueue];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __22__CAMBuffer_isEnabled__block_invoke;
    v6[3] = &unk_1E76FAFF0;
    v6[4] = self;
    v6[5] = &v7;
    dispatch_sync(_bufferQueue, v6);

    isBufferQueueEnabled = *(v8 + 24);
  }

  _Block_object_dispose(&v7, 8);
  return isBufferQueueEnabled & 1;
}

uint64_t __22__CAMBuffer_isEnabled__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isBufferQueueEnabled];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)_bufferQueueFulfillObservancesWithChange:(id)change
{
  v21 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  _bufferQueueObservances = [(CAMBuffer *)self _bufferQueueObservances];
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = _bufferQueueObservances;
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
        [v12 fulfillWithChange:{changeCopy, v16}];
        isEnabled = [v12 isEnabled];
        isRemovedOnceEnabled = [v12 isRemovedOnceEnabled];
        if (isEnabled)
        {
          v15 = isRemovedOnceEnabled == 0;
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
  _bufferQueueObservances = [(CAMBuffer *)self _bufferQueueObservances];
  if ([_bufferQueueObservances indexOfObjectPassingTest:&__block_literal_global_60] == 0x7FFFFFFFFFFFFFFFLL)
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

- (void)_bufferQueueFulfillAndEvaluateWithChange:(id)change
{
  [(CAMBuffer *)self _bufferQueueFulfillObservancesWithChange:change];

  [(CAMBuffer *)self _bufferQueueEvaluateObservances];
}

- (void)reevaluate
{
  _bufferQueue = [(CAMBuffer *)self _bufferQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __23__CAMBuffer_reevaluate__block_invoke;
  block[3] = &unk_1E76F77B0;
  block[4] = self;
  dispatch_sync(_bufferQueue, block);
}

- (void)_bufferQueueSetupObservance:(id)observance
{
  observanceCopy = observance;
  [observanceCopy setupObservanceForBuffer:self];
  _bufferQueueObservances = [(CAMBuffer *)self _bufferQueueObservances];
  [_bufferQueueObservances addObject:observanceCopy];
}

- (void)_bufferQueueTeardownObservance:(id)observance
{
  observanceCopy = observance;
  [observanceCopy teardownObservanceForBuffer:self];
  _bufferQueueObservances = [(CAMBuffer *)self _bufferQueueObservances];
  [_bufferQueueObservances removeObject:observanceCopy];
}

- (void)_bufferQueueTeardownObservances:(id)observances
{
  observancesCopy = observances;
  [observancesCopy makeObjectsPerformSelector:sel_teardownObservanceForBuffer_ withObject:self];
  _bufferQueueObservances = [(CAMBuffer *)self _bufferQueueObservances];
  [_bufferQueueObservances removeObjectsInArray:observancesCopy];
}

- (void)disableWhile:(id)while
{
  whileCopy = while;
  _bufferQueue = [(CAMBuffer *)self _bufferQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __26__CAMBuffer_disableWhile___block_invoke;
  v7[3] = &unk_1E76F83B0;
  v7[4] = self;
  v8 = whileCopy;
  v6 = whileCopy;
  dispatch_sync(_bufferQueue, v7);
}

void __26__CAMBuffer_disableWhile___block_invoke(uint64_t a1)
{
  v2 = [[CAMBufferObservance alloc] initWithPredicate:*(a1 + 40) removedOnceEnabled:0];
  [*(a1 + 32) _bufferQueueSetupObservance:v2];
  [*(a1 + 32) _bufferQueueFulfillAndEvaluateWithChange:0];
}

- (void)disableWhileKeyPath:(id)path ofObject:(id)object evaluates:(id)evaluates
{
  pathCopy = path;
  objectCopy = object;
  evaluatesCopy = evaluates;
  _bufferQueue = [(CAMBuffer *)self _bufferQueue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __52__CAMBuffer_disableWhileKeyPath_ofObject_evaluates___block_invoke;
  v15[3] = &unk_1E76FB560;
  v16 = pathCopy;
  v17 = objectCopy;
  selfCopy = self;
  v19 = evaluatesCopy;
  v12 = evaluatesCopy;
  v13 = objectCopy;
  v14 = pathCopy;
  dispatch_sync(_bufferQueue, v15);
}

void __52__CAMBuffer_disableWhileKeyPath_ofObject_evaluates___block_invoke(uint64_t a1)
{
  v3 = [[CAMBufferKeyValueObserverObservance alloc] initWithKeyPath:*(a1 + 32) ofObject:*(a1 + 40) withPredicate:*(a1 + 56) removedOnceEnabled:0];
  [*(a1 + 48) _bufferQueueSetupObservance:v3];
  v2 = [[CAMBufferKeyValueObserverObservanceChange alloc] initWithKeyPath:*(a1 + 32) ofObject:*(a1 + 40) withChange:0];
  [*(a1 + 48) _bufferQueueFulfillAndEvaluateWithChange:v2];
}

- (void)disableWhileNotification:(id)notification fromObject:(id)object usingNotificationCenter:(id)center
{
  notificationCopy = notification;
  objectCopy = object;
  centerCopy = center;
  _bufferQueue = [(CAMBuffer *)self _bufferQueue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __73__CAMBuffer_disableWhileNotification_fromObject_usingNotificationCenter___block_invoke;
  v15[3] = &unk_1E76F8230;
  v16 = notificationCopy;
  v17 = objectCopy;
  v18 = centerCopy;
  selfCopy = self;
  v12 = centerCopy;
  v13 = objectCopy;
  v14 = notificationCopy;
  dispatch_sync(_bufferQueue, v15);
}

void __73__CAMBuffer_disableWhileNotification_fromObject_usingNotificationCenter___block_invoke(uint64_t a1)
{
  v2 = [[CAMBufferNotificationObservance alloc] initWithNotification:*(a1 + 32) object:*(a1 + 40) center:*(a1 + 48) removeOnceEnabled:0];
  [*(a1 + 56) _bufferQueueSetupObservance:v2];
  [*(a1 + 56) _bufferQueueEvaluateObservances];
}

- (void)disableUntil:(id)until
{
  untilCopy = until;
  _bufferQueue = [(CAMBuffer *)self _bufferQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __26__CAMBuffer_disableUntil___block_invoke;
  v7[3] = &unk_1E76F83B0;
  v7[4] = self;
  v8 = untilCopy;
  v6 = untilCopy;
  dispatch_sync(_bufferQueue, v7);
}

void __26__CAMBuffer_disableUntil___block_invoke(uint64_t a1)
{
  v2 = [[CAMBufferObservance alloc] initWithPredicate:*(a1 + 40) removedOnceEnabled:1];
  [*(a1 + 32) _bufferQueueSetupObservance:v2];
  [*(a1 + 32) _bufferQueueFulfillAndEvaluateWithChange:0];
}

- (void)disableUntilKeyPath:(id)path ofObject:(id)object evaluates:(id)evaluates
{
  pathCopy = path;
  objectCopy = object;
  evaluatesCopy = evaluates;
  _bufferQueue = [(CAMBuffer *)self _bufferQueue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __52__CAMBuffer_disableUntilKeyPath_ofObject_evaluates___block_invoke;
  v15[3] = &unk_1E76FB560;
  v16 = pathCopy;
  v17 = objectCopy;
  selfCopy = self;
  v19 = evaluatesCopy;
  v12 = evaluatesCopy;
  v13 = objectCopy;
  v14 = pathCopy;
  dispatch_sync(_bufferQueue, v15);
}

void __52__CAMBuffer_disableUntilKeyPath_ofObject_evaluates___block_invoke(uint64_t a1)
{
  v3 = [[CAMBufferKeyValueObserverObservance alloc] initWithKeyPath:*(a1 + 32) ofObject:*(a1 + 40) withPredicate:*(a1 + 56) removedOnceEnabled:1];
  [*(a1 + 48) _bufferQueueSetupObservance:v3];
  v2 = [[CAMBufferKeyValueObserverObservanceChange alloc] initWithKeyPath:*(a1 + 32) ofObject:*(a1 + 40) withChange:0];
  [*(a1 + 48) _bufferQueueFulfillAndEvaluateWithChange:v2];
}

- (void)disableUntilNotification:(id)notification fromObject:(id)object usingNotificationCenter:(id)center
{
  notificationCopy = notification;
  objectCopy = object;
  centerCopy = center;
  _bufferQueue = [(CAMBuffer *)self _bufferQueue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __73__CAMBuffer_disableUntilNotification_fromObject_usingNotificationCenter___block_invoke;
  v15[3] = &unk_1E76F8230;
  v16 = notificationCopy;
  v17 = objectCopy;
  v18 = centerCopy;
  selfCopy = self;
  v12 = centerCopy;
  v13 = objectCopy;
  v14 = notificationCopy;
  dispatch_sync(_bufferQueue, v15);
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
  _bufferQueueBufferedValues = [(CAMBuffer *)self _bufferQueueBufferedValues];
  _bufferQueueObservers = [(CAMBuffer *)self _bufferQueueObservers];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = _bufferQueueBufferedValues;
  v19 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v19)
  {
    v18 = *v30;
    selfCopy = self;
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
      v6 = _bufferQueueObservers;
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
            bOOLValue = [v13 BOOLValue];

            if (bOOLValue)
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

      self = selfCopy;
      [(CAMBuffer *)selfCopy setBufferQueueCurrentValue:v5];
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

- (void)push:(id)push
{
  v4 = [push copyWithZone:0];
  _bufferQueue = [(CAMBuffer *)self _bufferQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __18__CAMBuffer_push___block_invoke;
  v7[3] = &unk_1E76F7960;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(_bufferQueue, v7);
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

- (void)replaceWith:(id)with
{
  v4 = [with copyWithZone:0];
  _bufferQueue = [(CAMBuffer *)self _bufferQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __25__CAMBuffer_replaceWith___block_invoke;
  v7[3] = &unk_1E76F7960;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(_bufferQueue, v7);
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
    bufferQueueCurrentValue = [(CAMBuffer *)self bufferQueueCurrentValue];
    v4 = v10[5];
    v10[5] = bufferQueueCurrentValue;
  }

  else
  {
    _bufferQueue = [(CAMBuffer *)self _bufferQueue];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __25__CAMBuffer_currentValue__block_invoke;
    v8[3] = &unk_1E76FAFF0;
    v8[4] = self;
    v8[5] = &v9;
    dispatch_sync(_bufferQueue, v8);
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
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  _bufferQueue = [(CAMBuffer *)self _bufferQueue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __26__CAMBuffer_isBufferEmpty__block_invoke;
  v5[3] = &unk_1E76FAFF0;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(_bufferQueue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
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
  _bufferQueue = [(CAMBuffer *)self _bufferQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __31__CAMBuffer_firstBufferedValue__block_invoke;
  v6[3] = &unk_1E76FAFF0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(_bufferQueue, v6);

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
  _bufferQueue = [(CAMBuffer *)self _bufferQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __30__CAMBuffer_lastBufferedValue__block_invoke;
  v6[3] = &unk_1E76FAFF0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(_bufferQueue, v6);

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
  _bufferQueue = [(CAMBuffer *)self _bufferQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __27__CAMBuffer_bufferedValues__block_invoke;
  v6[3] = &unk_1E76FAFF0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(_bufferQueue, v6);

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

- (id)_addObserver:(id)observer onMainQueue:(BOOL)queue
{
  queueCopy = queue;
  v6 = MEMORY[0x1E696AFB0];
  observerCopy = observer;
  uUID = [v6 UUID];
  uUIDString = [uUID UUIDString];

  v10 = [observerCopy copy];
  v11 = _Block_copy(v10);
  v12 = _shouldEmitValuesOnMainQueueKey;
  v13 = [MEMORY[0x1E696AD98] numberWithBool:queueCopy];
  objc_setAssociatedObject(v11, v12, v13, 1);

  _bufferQueue = [(CAMBuffer *)self _bufferQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__CAMBuffer__addObserver_onMainQueue___block_invoke;
  block[3] = &unk_1E76FCD08;
  block[4] = self;
  v22 = v10;
  v15 = uUIDString;
  v21 = v15;
  v16 = v10;
  dispatch_sync(_bufferQueue, block);

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

- (void)removeObserverForKey:(id)key
{
  keyCopy = key;
  _bufferQueue = [(CAMBuffer *)self _bufferQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __34__CAMBuffer_removeObserverForKey___block_invoke;
  v7[3] = &unk_1E76F7960;
  v7[4] = self;
  v8 = keyCopy;
  v6 = keyCopy;
  dispatch_sync(_bufferQueue, v7);
}

void __34__CAMBuffer_removeObserverForKey___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _bufferQueueObservers];
  [v2 removeObjectForKey:*(a1 + 40)];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  _bufferQueue = [(CAMBuffer *)self _bufferQueue];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __60__CAMBuffer_observeValueForKeyPath_ofObject_change_context___block_invoke;
  v16[3] = &unk_1E76F8230;
  v17 = pathCopy;
  v18 = objectCopy;
  v19 = changeCopy;
  selfCopy = self;
  v13 = changeCopy;
  v14 = objectCopy;
  v15 = pathCopy;
  dispatch_sync(_bufferQueue, v16);
}

void __60__CAMBuffer_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  v2 = [[CAMBufferKeyValueObserverObservanceChange alloc] initWithKeyPath:*(a1 + 32) ofObject:*(a1 + 40) withChange:*(a1 + 48)];
  [*(a1 + 56) _bufferQueueFulfillAndEvaluateWithChange:v2];
}

- (void)handleObservedNotification:(id)notification
{
  notificationCopy = notification;
  _bufferQueue = [(CAMBuffer *)self _bufferQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__CAMBuffer_handleObservedNotification___block_invoke;
  v7[3] = &unk_1E76F7960;
  v8 = notificationCopy;
  selfCopy = self;
  v6 = notificationCopy;
  dispatch_sync(_bufferQueue, v7);
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