@interface _BPSAbstractOrderedMerge
- (BOOL)_isBuffersEmpty;
- (BOOL)isWaitingForMoreValues;
- (_BPSAbstractOrderedMerge)initWithDownstream:(id)a3 upstreamCount:(unint64_t)a4;
- (id)newBookmark;
- (id)nextValueIndex:(id *)a3;
- (id)upstreamSubscriptions;
- (int64_t)receiveInput:(id)a3 atIndex:(unint64_t)a4;
- (void)_completeWhileLockedWithCompletion:(id)a3;
- (void)_guardedBecomeTerminal;
- (void)cancel;
- (void)flushBufferAndRequestMoreWhileLocked;
- (void)receiveCompletion:(id)a3 atIndex:(unint64_t)a4;
- (void)receiveSubscription:(id)a3 atIndex:(unint64_t)a4;
- (void)requestDemand:(int64_t)a3;
- (void)updateBookmarksWhenLockedForIndex:(unint64_t)a3;
@end

@implementation _BPSAbstractOrderedMerge

- (_BPSAbstractOrderedMerge)initWithDownstream:(id)a3 upstreamCount:(unint64_t)a4
{
  v26 = a3;
  v27.receiver = self;
  v27.super_class = _BPSAbstractOrderedMerge;
  v7 = [(_BPSAbstractOrderedMerge *)&v27 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_downstream, a3);
    v8->_upstreamCount = a4;
    v8->_recursion = 0;
    v8->_finished = 0;
    v8->_errored = 0;
    v8->_cancelled = 0;
    v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:a4];
    subscriptions = v8->_subscriptions;
    v8->_subscriptions = v9;

    v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:a4];
    buffers = v8->_buffers;
    v8->_buffers = v11;

    v8->_demand = 0;
    v13 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:a4];
    completedUpstreamIndexes = v8->_completedUpstreamIndexes;
    v8->_completedUpstreamIndexes = v13;

    v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:a4];
    requestsPerSubscription = v8->_requestsPerSubscription;
    v8->_requestsPerSubscription = v15;

    v17 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:a4];
    upstreamBookmarks = v8->_upstreamBookmarks;
    v8->_upstreamBookmarks = v17;

    v8->_lock._os_unfair_lock_opaque = 0;
    for (v8->_downstreamLock = 0; a4; --a4)
    {
      v19 = v8->_subscriptions;
      v20 = [MEMORY[0x1E695DFB0] null];
      [(NSMutableArray *)v19 addObject:v20];

      v21 = v8->_buffers;
      v22 = [MEMORY[0x1E695DFB0] null];
      [(NSMutableArray *)v21 addObject:v22];

      [(NSMutableArray *)v8->_requestsPerSubscription addObject:&unk_1F4870118];
      v23 = v8->_upstreamBookmarks;
      v24 = [MEMORY[0x1E695DFB0] null];
      [(NSMutableArray *)v23 addObject:v24];
    }
  }

  return v8;
}

- (void)requestDemand:(int64_t)a3
{
  v4 = self;
  if (a3 <= 0)
  {
    [_BPSAbstractOrderedMerge requestDemand:];
  }

  os_unfair_lock_lock(&v4->_lock);
  if ([(_BPSAbstractOrderedMerge *)v4 cancelled]|| [(_BPSAbstractOrderedMerge *)v4 finished]|| [(_BPSAbstractOrderedMerge *)v4 errored])
  {
    os_unfair_lock_unlock(&v4->_lock);
  }

  else
  {
    v5 = [(_BPSAbstractOrderedMerge *)v4 subscriptions];
    v6 = [v5 copy];

    v7 = [(_BPSAbstractOrderedMerge *)v4 requestsPerSubscription];
    [(_BPSAbstractOrderedMerge *)v4 setDemand:[(_BPSAbstractOrderedMerge *)v4 demand]+ a3];
    os_unfair_lock_unlock(&v4->_lock);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __42___BPSAbstractOrderedMerge_requestDemand___block_invoke;
    v11[3] = &unk_1E8320DC0;
    v8 = v7;
    v12 = v8;
    [v6 enumerateObjectsUsingBlock:v11];
    os_unfair_lock_lock(&v4->_lock);
    if (![(_BPSAbstractOrderedMerge *)v4 recursion]&& [(_BPSAbstractOrderedMerge *)v4 demand]>= 1)
    {
      [(_BPSAbstractOrderedMerge *)v4 flushBufferAndRequestMoreWhileLocked];
    }

    v9 = [(_BPSAbstractOrderedMerge *)v4 finishCount];
    if (v9 == [(_BPSAbstractOrderedMerge *)v4 upstreamCount]&& [(_BPSAbstractOrderedMerge *)v4 _isBuffersEmpty])
    {
      os_unfair_lock_unlock(&v4->_lock);
      [(_BPSAbstractOrderedMerge *)v4 _guardedBecomeTerminal];
      os_unfair_lock_lock(&v4->_lock);
      v10 = +[BPSCompletion success];
      [(_BPSAbstractOrderedMerge *)v4 _completeWhileLockedWithCompletion:v10];
    }

    os_unfair_lock_unlock(&v4->_lock);
  }
}

- (BOOL)isWaitingForMoreValues
{
  v3 = [(_BPSAbstractOrderedMerge *)self completedUpstreamIndexes];
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v4 = [(_BPSAbstractOrderedMerge *)self buffers];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50___BPSAbstractOrderedMerge_isWaitingForMoreValues__block_invoke;
  v7[3] = &unk_1E8320DE8;
  v5 = v3;
  v8 = v5;
  v9 = &v10;
  [v4 enumerateObjectsUsingBlock:v7];

  LOBYTE(v4) = *(v11 + 24);
  _Block_object_dispose(&v10, 8);

  return v4;
}

- (void)receiveSubscription:(id)a3 atIndex:(unint64_t)a4
{
  v12 = a3;
  if ([(_BPSAbstractOrderedMerge *)self upstreamCount]<= a4)
  {
    [_BPSAbstractOrderedMerge receiveSubscription:atIndex:];
  }

  os_unfair_lock_lock(&self->_lock);
  if ([(_BPSAbstractOrderedMerge *)self cancelled])
  {
    goto LABEL_8;
  }

  if ([(_BPSAbstractOrderedMerge *)self errored])
  {
    goto LABEL_8;
  }

  if ([(_BPSAbstractOrderedMerge *)self finished])
  {
    goto LABEL_8;
  }

  v6 = [(_BPSAbstractOrderedMerge *)self subscriptions];
  v7 = [v6 objectAtIndexedSubscript:a4];
  v8 = [MEMORY[0x1E695DFB0] null];
  v9 = [v7 isEqual:v8];

  if ((v9 & 1) == 0)
  {
LABEL_8:
    os_unfair_lock_unlock(&self->_lock);
    [v12 cancel];
  }

  else
  {
    v10 = [(_BPSAbstractOrderedMerge *)self subscriptions];
    [v10 setObject:v12 atIndexedSubscript:a4];

    v11 = [(_BPSAbstractOrderedMerge *)self requestsPerSubscription];
    [v11 setObject:&unk_1F4870130 atIndexedSubscript:a4];

    os_unfair_lock_unlock(&self->_lock);
    [v12 requestDemand:1];
  }
}

- (int64_t)receiveInput:(id)a3 atIndex:(unint64_t)a4
{
  v28[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = self;
  if ([(_BPSAbstractOrderedMerge *)v7 upstreamCount]<= a4)
  {
    [_BPSAbstractOrderedMerge receiveInput:atIndex:];
  }

  os_unfair_lock_lock(&v7->_lock);
  if (![(_BPSAbstractOrderedMerge *)v7 cancelled]&& ![(_BPSAbstractOrderedMerge *)v7 finished]&& ![(_BPSAbstractOrderedMerge *)v7 errored])
  {
    v11 = [(_BPSAbstractOrderedMerge *)v7 buffers];
    v12 = [v11 objectAtIndexedSubscript:a4];

    v13 = [MEMORY[0x1E695DFB0] null];
    v14 = [v12 isEqual:v13];

    if (v14)
    {
      v28[0] = v6;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
      v16 = [v15 mutableCopy];
      v17 = [(_BPSAbstractOrderedMerge *)v7 buffers];
      [v17 setObject:v16 atIndexedSubscript:a4];
    }

    else
    {
      [v12 addObject:v6];
      if ([v12 count] >= 2)
      {
        [_BPSAbstractOrderedMerge receiveInput:v12 atIndex:?];
      }
    }

    if (![(_BPSAbstractOrderedMerge *)v7 recursion]&& [(_BPSAbstractOrderedMerge *)v7 demand])
    {
      [(_BPSAbstractOrderedMerge *)v7 flushBufferAndRequestMoreWhileLocked];
    }

    v8 = 0;
    v18 = [(_BPSAbstractOrderedMerge *)v7 requestsPerSubscription];
    v19 = [v18 objectAtIndexedSubscript:a4];

    if (-[_BPSAbstractOrderedMerge isWaitingForMoreValues](v7, "isWaitingForMoreValues") && [v19 integerValue] > 0)
    {
      goto LABEL_22;
    }

    v27 = v12;
    v20 = [(_BPSAbstractOrderedMerge *)v7 buffers];
    v21 = [v20 objectAtIndexedSubscript:a4];
    v22 = [MEMORY[0x1E695DFB0] null];
    if ([v21 isEqual:v22])
    {

      v12 = v27;
    }

    else
    {
      [(_BPSAbstractOrderedMerge *)v7 buffers];
      v23 = v26 = v19;
      v24 = [v23 objectAtIndexedSubscript:a4];
      v25 = [v24 count];

      v19 = v26;
      v12 = v27;
      if (v25)
      {
LABEL_22:
        os_unfair_lock_unlock(&v7->_lock);

        goto LABEL_7;
      }

      v20 = [(_BPSAbstractOrderedMerge *)v7 requestsPerSubscription];
      [v20 setObject:&unk_1F4870130 atIndexedSubscript:a4];
      v8 = 1;
    }

    goto LABEL_22;
  }

  os_unfair_lock_unlock(&v7->_lock);
  v8 = 0;
LABEL_7:

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

- (BOOL)_isBuffersEmpty
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v3 = [(_BPSAbstractOrderedMerge *)self buffers];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43___BPSAbstractOrderedMerge__isBuffersEmpty__block_invoke;
  v7[3] = &unk_1E8320E10;
  v7[4] = &v8;
  [v3 enumerateObjectsUsingBlock:v7];

  v4 = *(v9 + 6);
  v5 = [(_BPSAbstractOrderedMerge *)self buffers];
  LOBYTE(v4) = [v5 count] == v4;

  _Block_object_dispose(&v8, 8);
  return v4;
}

- (void)_completeWhileLockedWithCompletion:(id)a3
{
  v8 = a3;
  [(_BPSAbstractOrderedMerge *)self setFinished:1];
  if ([(_BPSAbstractOrderedMerge *)self upstreamCount])
  {
    v4 = 0;
    do
    {
      v5 = [(_BPSAbstractOrderedMerge *)self completedUpstreamIndexes];
      v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v4];
      [v5 addObject:v6];

      ++v4;
    }

    while (v4 < [(_BPSAbstractOrderedMerge *)self upstreamCount]);
  }

  v7 = [(_BPSAbstractOrderedMerge *)self downstream];
  [(_BPSAbstractOrderedMerge *)self setDownstream:0];
  os_unfair_lock_unlock(&self->_lock);
  os_unfair_recursive_lock_lock_with_options();
  [v7 receiveCompletion:v8];
  os_unfair_recursive_lock_unlock();
  os_unfair_lock_lock(&self->_lock);
}

- (void)_guardedBecomeTerminal
{
  os_unfair_lock_lock(&self->_lock);
  [(_BPSAbstractOrderedMerge *)self setFinished:1];
  v3 = [(_BPSAbstractOrderedMerge *)self subscriptions];
  v17 = [v3 copy];

  if ([v17 count])
  {
    v4 = 0;
    do
    {
      [(_BPSAbstractOrderedMerge *)self updateBookmarksWhenLockedForIndex:v4];
      v5 = [MEMORY[0x1E695DFB0] null];
      v6 = [(_BPSAbstractOrderedMerge *)self subscriptions];
      [v6 setObject:v5 atIndexedSubscript:v4];

      v7 = [(_BPSAbstractOrderedMerge *)self requestsPerSubscription];
      [v7 setObject:&unk_1F4870118 atIndexedSubscript:v4];

      ++v4;
    }

    while (v4 < [v17 count]);
  }

  v8 = [(_BPSAbstractOrderedMerge *)self buffers];
  v9 = [v8 count];

  if (v9)
  {
    v10 = 0;
    do
    {
      v11 = [MEMORY[0x1E695DFB0] null];
      v12 = [(_BPSAbstractOrderedMerge *)self buffers];
      [v12 setObject:v11 atIndexedSubscript:v10];

      ++v10;
      v13 = [(_BPSAbstractOrderedMerge *)self buffers];
      v14 = [v13 count];
    }

    while (v10 < v14);
  }

  os_unfair_lock_unlock(&self->_lock);
  if ([v17 count])
  {
    v15 = 0;
    do
    {
      v16 = [v17 objectAtIndexedSubscript:v15];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [v16 cancel];
      }

      ++v15;
    }

    while (v15 < [v17 count]);
  }
}

- (void)receiveCompletion:(id)a3 atIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = self;
  v8 = __biome_log_for_category();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [(_BPSAbstractOrderedMerge *)v7 receiveCompletion:a4 atIndex:v8];
  }

  v9 = [v6 state];
  if (v9 == 1)
  {
    [(_BPSAbstractOrderedMerge *)v7 _guardedBecomeTerminal];
    os_unfair_lock_lock(&v7->_lock);
    [(_BPSAbstractOrderedMerge *)v7 setErrored:1];
    v16 = [(_BPSAbstractOrderedMerge *)v7 downstream];
    [(_BPSAbstractOrderedMerge *)v7 setDownstream:0];
    os_unfair_lock_unlock(&v7->_lock);
    os_unfair_recursive_lock_lock_with_options();
    [v16 receiveCompletion:v6];
    os_unfair_recursive_lock_unlock();
  }

  else if (!v9)
  {
    os_unfair_lock_lock(&v7->_lock);
    v10 = [(_BPSAbstractOrderedMerge *)v7 completedUpstreamIndexes];
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
    [v10 addObject:v11];

    if (![(_BPSAbstractOrderedMerge *)v7 finished])
    {
      [(_BPSAbstractOrderedMerge *)v7 setFinishCount:[(_BPSAbstractOrderedMerge *)v7 finishCount]+ 1];
      [(_BPSAbstractOrderedMerge *)v7 updateBookmarksWhenLockedForIndex:a4];
      v12 = [MEMORY[0x1E695DFB0] null];
      v13 = [(_BPSAbstractOrderedMerge *)v7 subscriptions];
      [v13 setObject:v12 atIndexedSubscript:a4];

      v14 = [(_BPSAbstractOrderedMerge *)v7 requestsPerSubscription];
      [v14 setObject:&unk_1F4870118 atIndexedSubscript:a4];

      if (![(_BPSAbstractOrderedMerge *)v7 recursion]&& [(_BPSAbstractOrderedMerge *)v7 demand])
      {
        [(_BPSAbstractOrderedMerge *)v7 flushBufferAndRequestMoreWhileLocked];
      }

      v15 = [(_BPSAbstractOrderedMerge *)v7 finishCount];
      if (v15 == [(_BPSAbstractOrderedMerge *)v7 upstreamCount]&& [(_BPSAbstractOrderedMerge *)v7 _isBuffersEmpty])
      {
        os_unfair_lock_unlock(&v7->_lock);
        [(_BPSAbstractOrderedMerge *)v7 _guardedBecomeTerminal];
        os_unfair_lock_lock(&v7->_lock);
        [(_BPSAbstractOrderedMerge *)v7 _completeWhileLockedWithCompletion:v6];
      }
    }

    os_unfair_lock_unlock(&v7->_lock);
  }
}

- (void)flushBufferAndRequestMoreWhileLocked
{
  if ([(_BPSAbstractOrderedMerge *)self demand]>= 1)
  {
    while (![(_BPSAbstractOrderedMerge *)self isWaitingForMoreValues])
    {
      v19 = 0;
      v3 = [(_BPSAbstractOrderedMerge *)self nextValueIndex:&v19];
      v4 = v19;
      v5 = v4;
      if (!v3)
      {

        return;
      }

      [(_BPSAbstractOrderedMerge *)self setDemand:[(_BPSAbstractOrderedMerge *)self demand]- 1];
      [(_BPSAbstractOrderedMerge *)self setRecursion:1];
      v6 = [v5 integerValue];
      v7 = [(_BPSAbstractOrderedMerge *)self requestsPerSubscription];
      v8 = [v7 objectAtIndexedSubscript:v6];

      v9 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v8, "integerValue") - 1}];
      v10 = [(_BPSAbstractOrderedMerge *)self requestsPerSubscription];
      [v10 setObject:v9 atIndexedSubscript:v6];

      v11 = [(_BPSAbstractOrderedMerge *)self subscriptions];
      v12 = [v11 objectAtIndexedSubscript:v6];

      v13 = [(_BPSAbstractOrderedMerge *)self downstream];
      os_unfair_lock_unlock(&self->_lock);
      os_unfair_recursive_lock_lock_with_options();
      v14 = [v13 receiveInput:v3];
      os_unfair_recursive_lock_unlock();
      os_unfair_lock_lock(&self->_lock);
      [(_BPSAbstractOrderedMerge *)self setRecursion:0];
      if (v14 >= 1)
      {
        [(_BPSAbstractOrderedMerge *)self setDemand:[(_BPSAbstractOrderedMerge *)self demand]+ v14];
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v15 = [(_BPSAbstractOrderedMerge *)self requestsPerSubscription];
        v16 = [v15 objectAtIndexedSubscript:v6];
        if ([v16 integerValue])
        {
        }

        else
        {
          v18 = [(_BPSAbstractOrderedMerge *)self demand];

          if (v18 >= 1)
          {
            v17 = [(_BPSAbstractOrderedMerge *)self requestsPerSubscription];
            [v17 setObject:&unk_1F4870130 atIndexedSubscript:v6];

            os_unfair_lock_unlock(&self->_lock);
            [v12 requestDemand:1];
            os_unfair_lock_lock(&self->_lock);
          }
        }
      }

      if ([(_BPSAbstractOrderedMerge *)self demand]<= 0)
      {
        return;
      }
    }
  }
}

- (id)nextValueIndex:(id *)a3
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0x7FFFFFFFFFFFFFFFLL;
  v5 = [(_BPSAbstractOrderedMerge *)self buffers];
  v6 = [v5 mutableCopy];

  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x3032000000;
  v11[3] = __Block_byref_object_copy_;
  v11[4] = __Block_byref_object_dispose_;
  v12 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __43___BPSAbstractOrderedMerge_nextValueIndex___block_invoke;
  v10[3] = &unk_1E8320E38;
  v10[5] = v11;
  v10[6] = &v13;
  v10[4] = self;
  [v6 enumerateObjectsUsingBlock:v10];
  if (a3)
  {
    *a3 = [MEMORY[0x1E696AD98] numberWithInteger:v14[3]];
  }

  if (v14[3] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    v8 = [v6 objectAtIndexedSubscript:?];
    v7 = [v8 objectAtIndexedSubscript:0];
    [v8 removeObjectAtIndex:0];
    [v6 setObject:v8 atIndexedSubscript:v14[3]];
    [(_BPSAbstractOrderedMerge *)self setBuffers:v6];
  }

  _Block_object_dispose(v11, 8);

  _Block_object_dispose(&v13, 8);

  return v7;
}

- (void)cancel
{
  v2 = self;
  [(_BPSAbstractOrderedMerge *)v2 _guardedBecomeTerminal];
  os_unfair_lock_lock(&v2->_lock);
  [(_BPSAbstractOrderedMerge *)v2 setCancelled:1];
  [(_BPSAbstractOrderedMerge *)v2 setDownstream:0];
  os_unfair_lock_unlock(&v2->_lock);
}

- (id)upstreamSubscriptions
{
  v2 = [(_BPSAbstractOrderedMerge *)self subscriptions];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  v5 = v4;

  return v4;
}

- (void)updateBookmarksWhenLockedForIndex:(unint64_t)a3
{
  v5 = [(_BPSAbstractOrderedMerge *)self subscriptions];
  v6 = [v5 objectAtIndexedSubscript:a3];

  v7 = [MEMORY[0x1E695DFB0] null];
  v8 = [v6 isEqual:v7];

  if ((v8 & 1) == 0)
  {
    if ([v6 conformsToProtocol:&unk_1F4871E60])
    {
      v9 = v6;
      v10 = [v9 newBookmark];
      if (v10)
      {
        [(NSMutableArray *)self->_upstreamBookmarks setObject:v10 atIndexedSubscript:a3];
      }
    }

    else
    {
      v11 = __biome_log_for_category();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [(_BPSMerged *)v6 updateBookmarksWhenLockedForIndex:v11];
      }
    }
  }
}

- (id)newBookmark
{
  v3 = [BMBookmarkNode alloc];
  upstreamBookmarks = self->_upstreamBookmarks;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [(BMBookmarkNode *)v3 initWithValue:0 upstreams:upstreamBookmarks name:v6];

  return v7;
}

- (void)requestDemand:.cold.1()
{
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)receiveSubscription:atIndex:.cold.1()
{
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)receiveInput:atIndex:.cold.1()
{
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)receiveInput:(void *)a1 atIndex:.cold.2(void *a1)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [a1 count];
  OUTLINED_FUNCTION_0_1();
  [v2 handleFailureInMethod:v3 object:? file:? lineNumber:? description:?];
}

- (void)receiveCompletion:(NSObject *)a3 atIndex:.cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v7 = 138412546;
  v8 = objc_opt_class();
  v9 = 2048;
  v10 = a2;
  v5 = v8;
  _os_log_debug_impl(&dword_1C871B000, a3, OS_LOG_TYPE_DEBUG, "%@ - completion at index: %lu", &v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

@end