@interface BRNotificationQueue
- (BRNotificationQueue)init;
- (void)_filterIndex:(id)index;
- (void)addDequeueCallback:(id)callback;
- (void)addNotification:(id)notification asDead:(BOOL)dead;
- (void)dequeue:(unint64_t)dequeue block:(id)block;
- (void)processDequeueCallbacks;
- (void)removeAllObjects;
@end

@implementation BRNotificationQueue

- (void)removeAllObjects
{
  v3 = [(NSMutableArray *)self->_array count];
  index = self->_index;
  self->_dequeued += v3;
  [(NSMutableDictionary *)index removeAllObjects];
  array = self->_array;

  [(NSMutableArray *)array removeAllObjects];
}

- (BRNotificationQueue)init
{
  v10.receiver = self;
  v10.super_class = BRNotificationQueue;
  v2 = [(BRNotificationQueue *)&v10 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:128];
    array = v2->_array;
    v2->_array = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    callbacks = v2->_callbacks;
    v2->_callbacks = v5;

    v7 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:128];
    index = v2->_index;
    v2->_index = v7;
  }

  return v2;
}

- (void)addNotification:(id)notification asDead:(BOOL)dead
{
  deadCopy = dead;
  notificationCopy = notification;
  fileObjectID = [notificationCopy fileObjectID];
  if (fileObjectID)
  {
    v8 = [(NSMutableDictionary *)self->_index objectForKey:fileObjectID];
    if (v8)
    {
      v9 = v8;
      v10 = -[NSMutableArray objectAtIndex:](self->_array, "objectAtIndex:", [v8 unsignedIntegerValue] - self->_dequeued);
      if ([v10 canMerge:notificationCopy])
      {
        [v10 merge:notificationCopy];
        if (deadCopy)
        {
          [v10 markDead];
        }

        goto LABEL_12;
      }

      if (!deadCopy)
      {
LABEL_11:
        [(NSMutableArray *)self->_array addObject:notificationCopy];
        index = self->_index;
        v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{self->_dequeued + -[NSMutableArray count](self->_array, "count") - 1}];
        [(NSMutableDictionary *)index setObject:v15 forKey:fileObjectID];

        v9 = 0;
LABEL_12:

        goto LABEL_13;
      }
    }

    else
    {
      v10 = 0;
      if (!deadCopy)
      {
        goto LABEL_11;
      }
    }

    v13 = [notificationCopy copy];

    [v13 markDead];
    notificationCopy = v13;
    goto LABEL_11;
  }

  v11 = brc_bread_crumbs("[BRNotificationQueue addNotification:asDead:]", 63);
  v12 = brc_default_log(0, 0);
  if (os_log_type_enabled(v12, 0x90u))
  {
    [(BRNotificationQueue *)notificationCopy addNotification:v11 asDead:v12];
  }

LABEL_13:
}

- (void)processDequeueCallbacks
{
  v17 = *MEMORY[0x1E69E9840];
  self->_dequeuedNotificationCount = 0;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = self->_callbacks;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v13;
    while (2)
    {
      v8 = 0;
      v9 = v6;
      v6 += v5;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v3);
        }

        dequeued = self->_dequeued;
        if (!(*(*(*(&v12 + 1) + 8 * v8) + 16))(*(*(&v12 + 1) + 8 * v8)))
        {
          v6 = v9;
          goto LABEL_11;
        }

        ++v9;
        ++v8;
      }

      while (v5 != v8);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }

LABEL_11:

    if (v6)
    {
      [(NSMutableArray *)self->_callbacks removeObjectsInRange:0, v6, v12];
    }
  }

  else
  {
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)addDequeueCallback:(id)callback
{
  v29 = *MEMORY[0x1E69E9840];
  callbackCopy = callback;
  if ([(NSMutableArray *)self->_array count]|| self->_dequeuedNotificationCount)
  {
    dequeued = self->_dequeued;
    v6 = [(NSMutableArray *)self->_array count];
    objc_initWeak(&location, self);
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __42__BRNotificationQueue_addDequeueCallback___block_invoke;
    v19 = &unk_1E7A16C80;
    v21[1] = (v6 + dequeued);
    objc_copyWeak(v21, &location);
    v20 = callbackCopy;
    v7 = MEMORY[0x1B26FEA90](&v16);
    v8 = brc_bread_crumbs("[BRNotificationQueue addDequeueCallback:]", 122);
    v9 = brc_default_log(1, 0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218498;
      v24 = v7;
      v25 = 2112;
      selfCopy2 = self;
      v27 = 2112;
      v28 = v8;
      _os_log_debug_impl(&dword_1AE2A9000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] Delaying callback %p in %@%@", buf, 0x20u);
    }

    callbacks = self->_callbacks;
    v11 = MEMORY[0x1B26FEA90](v7);
    [(NSMutableArray *)callbacks addObject:v11, v16, v17, v18, v19];

    objc_destroyWeak(v21);
    objc_destroyWeak(&location);
  }

  else
  {
    v13 = brc_bread_crumbs("[BRNotificationQueue addDequeueCallback:]", 125);
    v14 = brc_default_log(1, 0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = MEMORY[0x1B26FEA90](callbackCopy);
      *buf = 134218498;
      v24 = v15;
      v25 = 2112;
      selfCopy2 = self;
      v27 = 2112;
      v28 = v13;
      _os_log_debug_impl(&dword_1AE2A9000, v14, OS_LOG_TYPE_DEBUG, "[DEBUG] Firing callback %p right away in %@%@", buf, 0x20u);
    }

    callbackCopy[2](callbackCopy);
  }

  v12 = *MEMORY[0x1E69E9840];
}

BOOL __42__BRNotificationQueue_addDequeueCallback___block_invoke(uint64_t a1, unint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 48);
  if (v3 <= a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v6 = brc_bread_crumbs("[BRNotificationQueue addDequeueCallback:]_block_invoke", 116);
    v7 = brc_default_log(1, 0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v10 = MEMORY[0x1B26FEA90](*(a1 + 32));
      v11 = *(a1 + 48);
      v12 = 134219010;
      v13 = v10;
      v14 = 2112;
      v15 = WeakRetained;
      v16 = 2048;
      v17 = v11;
      v18 = 2048;
      v19 = a2;
      v20 = 2112;
      v21 = v6;
      _os_log_debug_impl(&dword_1AE2A9000, v7, OS_LOG_TYPE_DEBUG, "[DEBUG] Firing delayed callback %p in %@ (%lu vs %lu)%@", &v12, 0x34u);
    }

    (*(*(a1 + 32) + 16))();
  }

  result = v3 <= a2;
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_filterIndex:(id)index
{
  v26 = *MEMORY[0x1E69E9840];
  indexCopy = index;
  v5 = [(NSMutableArray *)self->_array count];
  if ([indexCopy count] >= v5)
  {
    [(NSMutableDictionary *)self->_index removeAllObjects];
    if (v5)
    {
      for (i = 0; i != v5; ++i)
      {
        v16 = [(NSMutableArray *)self->_array objectAtIndex:i];
        index = self->_index;
        v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:i + self->_dequeued];
        fileObjectID = [v16 fileObjectID];
        [(NSMutableDictionary *)index setObject:v18 forKey:fileObjectID];
      }
    }
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v6 = indexCopy;
    v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v22;
      do
      {
        v10 = 0;
        do
        {
          if (*v22 != v9)
          {
            objc_enumerationMutation(v6);
          }

          fileObjectID2 = [*(*(&v21 + 1) + 8 * v10) fileObjectID];
          if (fileObjectID2)
          {
            v12 = [(NSMutableDictionary *)self->_index objectForKey:fileObjectID2];
            unsignedIntegerValue = [v12 unsignedIntegerValue];
            dequeued = self->_dequeued;

            if (unsignedIntegerValue < dequeued)
            {
              [(NSMutableDictionary *)self->_index removeObjectForKey:fileObjectID2];
            }
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v8);
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)dequeue:(unint64_t)dequeue block:(id)block
{
  blockCopy = block;
  v6 = [(NSMutableArray *)self->_array count];
  if (v6)
  {
    if (v6 <= dequeue)
    {
      self->_dequeued += v6;
      dequeue = self->_array;
      v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:128];
      array = self->_array;
      self->_array = v9;
    }

    else
    {
      v7 = objc_autoreleasePoolPush();
      self->_dequeued += dequeue;
      dequeue = [(NSMutableArray *)self->_array subarrayWithRange:0, dequeue];
      [(NSMutableArray *)self->_array removeObjectsInRange:0, dequeue];
      objc_autoreleasePoolPop(v7);
    }

    [(BRNotificationQueue *)self _filterIndex:dequeue];
    self->_dequeuedNotificationCount += [(NSMutableArray *)dequeue count];
    blockCopy[2](blockCopy, dequeue);
  }

  else
  {
    blockCopy[2](blockCopy, 0);
  }
}

- (void)addNotification:(os_log_t)log asDead:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_1AE2A9000, log, 0x90u, "[ERROR] No object id for update %@%@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

@end