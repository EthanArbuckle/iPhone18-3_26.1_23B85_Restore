@interface BRNotificationQueue
- (BRNotificationQueue)init;
- (void)_filterIndex:(id)a3;
- (void)addDequeueCallback:(id)a3;
- (void)addNotification:(id)a3 asDead:(BOOL)a4;
- (void)dequeue:(unint64_t)a3 block:(id)a4;
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

- (void)addNotification:(id)a3 asDead:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 fileObjectID];
  if (v7)
  {
    v8 = [(NSMutableDictionary *)self->_index objectForKey:v7];
    if (v8)
    {
      v9 = v8;
      v10 = -[NSMutableArray objectAtIndex:](self->_array, "objectAtIndex:", [v8 unsignedIntegerValue] - self->_dequeued);
      if ([v10 canMerge:v6])
      {
        [v10 merge:v6];
        if (v4)
        {
          [v10 markDead];
        }

        goto LABEL_12;
      }

      if (!v4)
      {
LABEL_11:
        [(NSMutableArray *)self->_array addObject:v6];
        index = self->_index;
        v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{self->_dequeued + -[NSMutableArray count](self->_array, "count") - 1}];
        [(NSMutableDictionary *)index setObject:v15 forKey:v7];

        v9 = 0;
LABEL_12:

        goto LABEL_13;
      }
    }

    else
    {
      v10 = 0;
      if (!v4)
      {
        goto LABEL_11;
      }
    }

    v13 = [v6 copy];

    [v13 markDead];
    v6 = v13;
    goto LABEL_11;
  }

  v11 = brc_bread_crumbs("[BRNotificationQueue addNotification:asDead:]", 63);
  v12 = brc_default_log(0, 0);
  if (os_log_type_enabled(v12, 0x90u))
  {
    [(BRNotificationQueue *)v6 addNotification:v11 asDead:v12];
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

- (void)addDequeueCallback:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
    v20 = v4;
    v7 = MEMORY[0x1B26FEA90](&v16);
    v8 = brc_bread_crumbs("[BRNotificationQueue addDequeueCallback:]", 122);
    v9 = brc_default_log(1, 0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218498;
      v24 = v7;
      v25 = 2112;
      v26 = self;
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
      v15 = MEMORY[0x1B26FEA90](v4);
      *buf = 134218498;
      v24 = v15;
      v25 = 2112;
      v26 = self;
      v27 = 2112;
      v28 = v13;
      _os_log_debug_impl(&dword_1AE2A9000, v14, OS_LOG_TYPE_DEBUG, "[DEBUG] Firing callback %p right away in %@%@", buf, 0x20u);
    }

    v4[2](v4);
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

- (void)_filterIndex:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(NSMutableArray *)self->_array count];
  if ([v4 count] >= v5)
  {
    [(NSMutableDictionary *)self->_index removeAllObjects];
    if (v5)
    {
      for (i = 0; i != v5; ++i)
      {
        v16 = [(NSMutableArray *)self->_array objectAtIndex:i];
        index = self->_index;
        v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:i + self->_dequeued];
        v19 = [v16 fileObjectID];
        [(NSMutableDictionary *)index setObject:v18 forKey:v19];
      }
    }
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v6 = v4;
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

          v11 = [*(*(&v21 + 1) + 8 * v10) fileObjectID];
          if (v11)
          {
            v12 = [(NSMutableDictionary *)self->_index objectForKey:v11];
            v13 = [v12 unsignedIntegerValue];
            dequeued = self->_dequeued;

            if (v13 < dequeued)
            {
              [(NSMutableDictionary *)self->_index removeObjectForKey:v11];
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

- (void)dequeue:(unint64_t)a3 block:(id)a4
{
  v11 = a4;
  v6 = [(NSMutableArray *)self->_array count];
  if (v6)
  {
    if (v6 <= a3)
    {
      self->_dequeued += v6;
      v8 = self->_array;
      v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:128];
      array = self->_array;
      self->_array = v9;
    }

    else
    {
      v7 = objc_autoreleasePoolPush();
      self->_dequeued += a3;
      v8 = [(NSMutableArray *)self->_array subarrayWithRange:0, a3];
      [(NSMutableArray *)self->_array removeObjectsInRange:0, a3];
      objc_autoreleasePoolPop(v7);
    }

    [(BRNotificationQueue *)self _filterIndex:v8];
    self->_dequeuedNotificationCount += [(NSMutableArray *)v8 count];
    v11[2](v11, v8);
  }

  else
  {
    v11[2](v11, 0);
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