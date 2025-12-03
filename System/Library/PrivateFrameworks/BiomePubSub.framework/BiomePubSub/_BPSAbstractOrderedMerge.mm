@interface _BPSAbstractOrderedMerge
- (BOOL)_isBuffersEmpty;
- (BOOL)isWaitingForMoreValues;
- (_BPSAbstractOrderedMerge)initWithDownstream:(id)downstream upstreamCount:(unint64_t)count;
- (id)newBookmark;
- (id)nextValueIndex:(id *)index;
- (id)upstreamSubscriptions;
- (int64_t)receiveInput:(id)input atIndex:(unint64_t)index;
- (void)_completeWhileLockedWithCompletion:(id)completion;
- (void)_guardedBecomeTerminal;
- (void)cancel;
- (void)flushBufferAndRequestMoreWhileLocked;
- (void)receiveCompletion:(id)completion atIndex:(unint64_t)index;
- (void)receiveSubscription:(id)subscription atIndex:(unint64_t)index;
- (void)requestDemand:(int64_t)demand;
- (void)updateBookmarksWhenLockedForIndex:(unint64_t)index;
@end

@implementation _BPSAbstractOrderedMerge

- (_BPSAbstractOrderedMerge)initWithDownstream:(id)downstream upstreamCount:(unint64_t)count
{
  downstreamCopy = downstream;
  v27.receiver = self;
  v27.super_class = _BPSAbstractOrderedMerge;
  v7 = [(_BPSAbstractOrderedMerge *)&v27 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_downstream, downstream);
    v8->_upstreamCount = count;
    v8->_recursion = 0;
    v8->_finished = 0;
    v8->_errored = 0;
    v8->_cancelled = 0;
    v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:count];
    subscriptions = v8->_subscriptions;
    v8->_subscriptions = v9;

    v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:count];
    buffers = v8->_buffers;
    v8->_buffers = v11;

    v8->_demand = 0;
    v13 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:count];
    completedUpstreamIndexes = v8->_completedUpstreamIndexes;
    v8->_completedUpstreamIndexes = v13;

    v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:count];
    requestsPerSubscription = v8->_requestsPerSubscription;
    v8->_requestsPerSubscription = v15;

    v17 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:count];
    upstreamBookmarks = v8->_upstreamBookmarks;
    v8->_upstreamBookmarks = v17;

    v8->_lock._os_unfair_lock_opaque = 0;
    for (v8->_downstreamLock = 0; count; --count)
    {
      v19 = v8->_subscriptions;
      null = [MEMORY[0x1E695DFB0] null];
      [(NSMutableArray *)v19 addObject:null];

      v21 = v8->_buffers;
      null2 = [MEMORY[0x1E695DFB0] null];
      [(NSMutableArray *)v21 addObject:null2];

      [(NSMutableArray *)v8->_requestsPerSubscription addObject:&unk_1F4870118];
      v23 = v8->_upstreamBookmarks;
      null3 = [MEMORY[0x1E695DFB0] null];
      [(NSMutableArray *)v23 addObject:null3];
    }
  }

  return v8;
}

- (void)requestDemand:(int64_t)demand
{
  selfCopy = self;
  if (demand <= 0)
  {
    [_BPSAbstractOrderedMerge requestDemand:];
  }

  os_unfair_lock_lock(&selfCopy->_lock);
  if ([(_BPSAbstractOrderedMerge *)selfCopy cancelled]|| [(_BPSAbstractOrderedMerge *)selfCopy finished]|| [(_BPSAbstractOrderedMerge *)selfCopy errored])
  {
    os_unfair_lock_unlock(&selfCopy->_lock);
  }

  else
  {
    subscriptions = [(_BPSAbstractOrderedMerge *)selfCopy subscriptions];
    v6 = [subscriptions copy];

    requestsPerSubscription = [(_BPSAbstractOrderedMerge *)selfCopy requestsPerSubscription];
    [(_BPSAbstractOrderedMerge *)selfCopy setDemand:[(_BPSAbstractOrderedMerge *)selfCopy demand]+ demand];
    os_unfair_lock_unlock(&selfCopy->_lock);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __42___BPSAbstractOrderedMerge_requestDemand___block_invoke;
    v11[3] = &unk_1E8320DC0;
    v8 = requestsPerSubscription;
    v12 = v8;
    [v6 enumerateObjectsUsingBlock:v11];
    os_unfair_lock_lock(&selfCopy->_lock);
    if (![(_BPSAbstractOrderedMerge *)selfCopy recursion]&& [(_BPSAbstractOrderedMerge *)selfCopy demand]>= 1)
    {
      [(_BPSAbstractOrderedMerge *)selfCopy flushBufferAndRequestMoreWhileLocked];
    }

    finishCount = [(_BPSAbstractOrderedMerge *)selfCopy finishCount];
    if (finishCount == [(_BPSAbstractOrderedMerge *)selfCopy upstreamCount]&& [(_BPSAbstractOrderedMerge *)selfCopy _isBuffersEmpty])
    {
      os_unfair_lock_unlock(&selfCopy->_lock);
      [(_BPSAbstractOrderedMerge *)selfCopy _guardedBecomeTerminal];
      os_unfair_lock_lock(&selfCopy->_lock);
      v10 = +[BPSCompletion success];
      [(_BPSAbstractOrderedMerge *)selfCopy _completeWhileLockedWithCompletion:v10];
    }

    os_unfair_lock_unlock(&selfCopy->_lock);
  }
}

- (BOOL)isWaitingForMoreValues
{
  completedUpstreamIndexes = [(_BPSAbstractOrderedMerge *)self completedUpstreamIndexes];
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  buffers = [(_BPSAbstractOrderedMerge *)self buffers];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50___BPSAbstractOrderedMerge_isWaitingForMoreValues__block_invoke;
  v7[3] = &unk_1E8320DE8;
  v5 = completedUpstreamIndexes;
  v8 = v5;
  v9 = &v10;
  [buffers enumerateObjectsUsingBlock:v7];

  LOBYTE(buffers) = *(v11 + 24);
  _Block_object_dispose(&v10, 8);

  return buffers;
}

- (void)receiveSubscription:(id)subscription atIndex:(unint64_t)index
{
  subscriptionCopy = subscription;
  if ([(_BPSAbstractOrderedMerge *)self upstreamCount]<= index)
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

  subscriptions = [(_BPSAbstractOrderedMerge *)self subscriptions];
  v7 = [subscriptions objectAtIndexedSubscript:index];
  null = [MEMORY[0x1E695DFB0] null];
  v9 = [v7 isEqual:null];

  if ((v9 & 1) == 0)
  {
LABEL_8:
    os_unfair_lock_unlock(&self->_lock);
    [subscriptionCopy cancel];
  }

  else
  {
    subscriptions2 = [(_BPSAbstractOrderedMerge *)self subscriptions];
    [subscriptions2 setObject:subscriptionCopy atIndexedSubscript:index];

    requestsPerSubscription = [(_BPSAbstractOrderedMerge *)self requestsPerSubscription];
    [requestsPerSubscription setObject:&unk_1F4870130 atIndexedSubscript:index];

    os_unfair_lock_unlock(&self->_lock);
    [subscriptionCopy requestDemand:1];
  }
}

- (int64_t)receiveInput:(id)input atIndex:(unint64_t)index
{
  v28[1] = *MEMORY[0x1E69E9840];
  inputCopy = input;
  selfCopy = self;
  if ([(_BPSAbstractOrderedMerge *)selfCopy upstreamCount]<= index)
  {
    [_BPSAbstractOrderedMerge receiveInput:atIndex:];
  }

  os_unfair_lock_lock(&selfCopy->_lock);
  if (![(_BPSAbstractOrderedMerge *)selfCopy cancelled]&& ![(_BPSAbstractOrderedMerge *)selfCopy finished]&& ![(_BPSAbstractOrderedMerge *)selfCopy errored])
  {
    buffers = [(_BPSAbstractOrderedMerge *)selfCopy buffers];
    v12 = [buffers objectAtIndexedSubscript:index];

    null = [MEMORY[0x1E695DFB0] null];
    v14 = [v12 isEqual:null];

    if (v14)
    {
      v28[0] = inputCopy;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
      v16 = [v15 mutableCopy];
      buffers2 = [(_BPSAbstractOrderedMerge *)selfCopy buffers];
      [buffers2 setObject:v16 atIndexedSubscript:index];
    }

    else
    {
      [v12 addObject:inputCopy];
      if ([v12 count] >= 2)
      {
        [_BPSAbstractOrderedMerge receiveInput:v12 atIndex:?];
      }
    }

    if (![(_BPSAbstractOrderedMerge *)selfCopy recursion]&& [(_BPSAbstractOrderedMerge *)selfCopy demand])
    {
      [(_BPSAbstractOrderedMerge *)selfCopy flushBufferAndRequestMoreWhileLocked];
    }

    v8 = 0;
    requestsPerSubscription = [(_BPSAbstractOrderedMerge *)selfCopy requestsPerSubscription];
    v19 = [requestsPerSubscription objectAtIndexedSubscript:index];

    if (-[_BPSAbstractOrderedMerge isWaitingForMoreValues](selfCopy, "isWaitingForMoreValues") && [v19 integerValue] > 0)
    {
      goto LABEL_22;
    }

    v27 = v12;
    buffers3 = [(_BPSAbstractOrderedMerge *)selfCopy buffers];
    v21 = [buffers3 objectAtIndexedSubscript:index];
    null2 = [MEMORY[0x1E695DFB0] null];
    if ([v21 isEqual:null2])
    {

      v12 = v27;
    }

    else
    {
      [(_BPSAbstractOrderedMerge *)selfCopy buffers];
      v23 = v26 = v19;
      v24 = [v23 objectAtIndexedSubscript:index];
      v25 = [v24 count];

      v19 = v26;
      v12 = v27;
      if (v25)
      {
LABEL_22:
        os_unfair_lock_unlock(&selfCopy->_lock);

        goto LABEL_7;
      }

      buffers3 = [(_BPSAbstractOrderedMerge *)selfCopy requestsPerSubscription];
      [buffers3 setObject:&unk_1F4870130 atIndexedSubscript:index];
      v8 = 1;
    }

    goto LABEL_22;
  }

  os_unfair_lock_unlock(&selfCopy->_lock);
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
  buffers = [(_BPSAbstractOrderedMerge *)self buffers];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43___BPSAbstractOrderedMerge__isBuffersEmpty__block_invoke;
  v7[3] = &unk_1E8320E10;
  v7[4] = &v8;
  [buffers enumerateObjectsUsingBlock:v7];

  v4 = *(v9 + 6);
  buffers2 = [(_BPSAbstractOrderedMerge *)self buffers];
  LOBYTE(v4) = [buffers2 count] == v4;

  _Block_object_dispose(&v8, 8);
  return v4;
}

- (void)_completeWhileLockedWithCompletion:(id)completion
{
  completionCopy = completion;
  [(_BPSAbstractOrderedMerge *)self setFinished:1];
  if ([(_BPSAbstractOrderedMerge *)self upstreamCount])
  {
    v4 = 0;
    do
    {
      completedUpstreamIndexes = [(_BPSAbstractOrderedMerge *)self completedUpstreamIndexes];
      v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v4];
      [completedUpstreamIndexes addObject:v6];

      ++v4;
    }

    while (v4 < [(_BPSAbstractOrderedMerge *)self upstreamCount]);
  }

  downstream = [(_BPSAbstractOrderedMerge *)self downstream];
  [(_BPSAbstractOrderedMerge *)self setDownstream:0];
  os_unfair_lock_unlock(&self->_lock);
  os_unfair_recursive_lock_lock_with_options();
  [downstream receiveCompletion:completionCopy];
  os_unfair_recursive_lock_unlock();
  os_unfair_lock_lock(&self->_lock);
}

- (void)_guardedBecomeTerminal
{
  os_unfair_lock_lock(&self->_lock);
  [(_BPSAbstractOrderedMerge *)self setFinished:1];
  subscriptions = [(_BPSAbstractOrderedMerge *)self subscriptions];
  v17 = [subscriptions copy];

  if ([v17 count])
  {
    v4 = 0;
    do
    {
      [(_BPSAbstractOrderedMerge *)self updateBookmarksWhenLockedForIndex:v4];
      null = [MEMORY[0x1E695DFB0] null];
      subscriptions2 = [(_BPSAbstractOrderedMerge *)self subscriptions];
      [subscriptions2 setObject:null atIndexedSubscript:v4];

      requestsPerSubscription = [(_BPSAbstractOrderedMerge *)self requestsPerSubscription];
      [requestsPerSubscription setObject:&unk_1F4870118 atIndexedSubscript:v4];

      ++v4;
    }

    while (v4 < [v17 count]);
  }

  buffers = [(_BPSAbstractOrderedMerge *)self buffers];
  v9 = [buffers count];

  if (v9)
  {
    v10 = 0;
    do
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      buffers2 = [(_BPSAbstractOrderedMerge *)self buffers];
      [buffers2 setObject:null2 atIndexedSubscript:v10];

      ++v10;
      buffers3 = [(_BPSAbstractOrderedMerge *)self buffers];
      v14 = [buffers3 count];
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

- (void)receiveCompletion:(id)completion atIndex:(unint64_t)index
{
  completionCopy = completion;
  selfCopy = self;
  v8 = __biome_log_for_category();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [(_BPSAbstractOrderedMerge *)selfCopy receiveCompletion:index atIndex:v8];
  }

  state = [completionCopy state];
  if (state == 1)
  {
    [(_BPSAbstractOrderedMerge *)selfCopy _guardedBecomeTerminal];
    os_unfair_lock_lock(&selfCopy->_lock);
    [(_BPSAbstractOrderedMerge *)selfCopy setErrored:1];
    downstream = [(_BPSAbstractOrderedMerge *)selfCopy downstream];
    [(_BPSAbstractOrderedMerge *)selfCopy setDownstream:0];
    os_unfair_lock_unlock(&selfCopy->_lock);
    os_unfair_recursive_lock_lock_with_options();
    [downstream receiveCompletion:completionCopy];
    os_unfair_recursive_lock_unlock();
  }

  else if (!state)
  {
    os_unfair_lock_lock(&selfCopy->_lock);
    completedUpstreamIndexes = [(_BPSAbstractOrderedMerge *)selfCopy completedUpstreamIndexes];
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:index];
    [completedUpstreamIndexes addObject:v11];

    if (![(_BPSAbstractOrderedMerge *)selfCopy finished])
    {
      [(_BPSAbstractOrderedMerge *)selfCopy setFinishCount:[(_BPSAbstractOrderedMerge *)selfCopy finishCount]+ 1];
      [(_BPSAbstractOrderedMerge *)selfCopy updateBookmarksWhenLockedForIndex:index];
      null = [MEMORY[0x1E695DFB0] null];
      subscriptions = [(_BPSAbstractOrderedMerge *)selfCopy subscriptions];
      [subscriptions setObject:null atIndexedSubscript:index];

      requestsPerSubscription = [(_BPSAbstractOrderedMerge *)selfCopy requestsPerSubscription];
      [requestsPerSubscription setObject:&unk_1F4870118 atIndexedSubscript:index];

      if (![(_BPSAbstractOrderedMerge *)selfCopy recursion]&& [(_BPSAbstractOrderedMerge *)selfCopy demand])
      {
        [(_BPSAbstractOrderedMerge *)selfCopy flushBufferAndRequestMoreWhileLocked];
      }

      finishCount = [(_BPSAbstractOrderedMerge *)selfCopy finishCount];
      if (finishCount == [(_BPSAbstractOrderedMerge *)selfCopy upstreamCount]&& [(_BPSAbstractOrderedMerge *)selfCopy _isBuffersEmpty])
      {
        os_unfair_lock_unlock(&selfCopy->_lock);
        [(_BPSAbstractOrderedMerge *)selfCopy _guardedBecomeTerminal];
        os_unfair_lock_lock(&selfCopy->_lock);
        [(_BPSAbstractOrderedMerge *)selfCopy _completeWhileLockedWithCompletion:completionCopy];
      }
    }

    os_unfair_lock_unlock(&selfCopy->_lock);
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
      integerValue = [v5 integerValue];
      requestsPerSubscription = [(_BPSAbstractOrderedMerge *)self requestsPerSubscription];
      v8 = [requestsPerSubscription objectAtIndexedSubscript:integerValue];

      v9 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v8, "integerValue") - 1}];
      requestsPerSubscription2 = [(_BPSAbstractOrderedMerge *)self requestsPerSubscription];
      [requestsPerSubscription2 setObject:v9 atIndexedSubscript:integerValue];

      subscriptions = [(_BPSAbstractOrderedMerge *)self subscriptions];
      v12 = [subscriptions objectAtIndexedSubscript:integerValue];

      downstream = [(_BPSAbstractOrderedMerge *)self downstream];
      os_unfair_lock_unlock(&self->_lock);
      os_unfair_recursive_lock_lock_with_options();
      v14 = [downstream receiveInput:v3];
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
        requestsPerSubscription3 = [(_BPSAbstractOrderedMerge *)self requestsPerSubscription];
        v16 = [requestsPerSubscription3 objectAtIndexedSubscript:integerValue];
        if ([v16 integerValue])
        {
        }

        else
        {
          demand = [(_BPSAbstractOrderedMerge *)self demand];

          if (demand >= 1)
          {
            requestsPerSubscription4 = [(_BPSAbstractOrderedMerge *)self requestsPerSubscription];
            [requestsPerSubscription4 setObject:&unk_1F4870130 atIndexedSubscript:integerValue];

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

- (id)nextValueIndex:(id *)index
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0x7FFFFFFFFFFFFFFFLL;
  buffers = [(_BPSAbstractOrderedMerge *)self buffers];
  v6 = [buffers mutableCopy];

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
  if (index)
  {
    *index = [MEMORY[0x1E696AD98] numberWithInteger:v14[3]];
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
  selfCopy = self;
  [(_BPSAbstractOrderedMerge *)selfCopy _guardedBecomeTerminal];
  os_unfair_lock_lock(&selfCopy->_lock);
  [(_BPSAbstractOrderedMerge *)selfCopy setCancelled:1];
  [(_BPSAbstractOrderedMerge *)selfCopy setDownstream:0];
  os_unfair_lock_unlock(&selfCopy->_lock);
}

- (id)upstreamSubscriptions
{
  subscriptions = [(_BPSAbstractOrderedMerge *)self subscriptions];
  v3 = subscriptions;
  if (subscriptions)
  {
    v4 = subscriptions;
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  v5 = v4;

  return v4;
}

- (void)updateBookmarksWhenLockedForIndex:(unint64_t)index
{
  subscriptions = [(_BPSAbstractOrderedMerge *)self subscriptions];
  v6 = [subscriptions objectAtIndexedSubscript:index];

  null = [MEMORY[0x1E695DFB0] null];
  v8 = [v6 isEqual:null];

  if ((v8 & 1) == 0)
  {
    if ([v6 conformsToProtocol:&unk_1F4871E60])
    {
      v9 = v6;
      newBookmark = [v9 newBookmark];
      if (newBookmark)
      {
        [(NSMutableArray *)self->_upstreamBookmarks setObject:newBookmark atIndexedSubscript:index];
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