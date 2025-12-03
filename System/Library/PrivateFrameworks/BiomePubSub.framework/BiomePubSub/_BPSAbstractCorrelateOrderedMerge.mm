@interface _BPSAbstractCorrelateOrderedMerge
- (BOOL)_isBuffersEmpty;
- (BOOL)isWaitingForMoreValues;
- (_BPSAbstractCorrelateOrderedMerge)initWithDownstream:(id)downstream upstreamCount:(unint64_t)count;
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

@implementation _BPSAbstractCorrelateOrderedMerge

- (_BPSAbstractCorrelateOrderedMerge)initWithDownstream:(id)downstream upstreamCount:(unint64_t)count
{
  downstreamCopy = downstream;
  v27.receiver = self;
  v27.super_class = _BPSAbstractCorrelateOrderedMerge;
  v7 = [(_BPSAbstractCorrelateOrderedMerge *)&v27 init];
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
    upstreamBookmarks = v8->_upstreamBookmarks;
    v8->_upstreamBookmarks = v11;

    v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:count];
    buffers = v8->_buffers;
    v8->_buffers = v13;

    v8->_demand = 0;
    v15 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:count];
    completedUpstreamIndexes = v8->_completedUpstreamIndexes;
    v8->_completedUpstreamIndexes = v15;

    v17 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:count];
    requestsPerSubscription = v8->_requestsPerSubscription;
    v8->_requestsPerSubscription = v17;

    v8->_lock._os_unfair_lock_opaque = 0;
    for (v8->_downstreamLock = 0; count; --count)
    {
      v19 = v8->_subscriptions;
      null = [MEMORY[0x1E695DFB0] null];
      [(NSMutableArray *)v19 addObject:null];

      v21 = v8->_upstreamBookmarks;
      null2 = [MEMORY[0x1E695DFB0] null];
      [(NSMutableArray *)v21 addObject:null2];

      v23 = v8->_buffers;
      null3 = [MEMORY[0x1E695DFB0] null];
      [(NSMutableArray *)v23 addObject:null3];

      [(NSMutableArray *)v8->_requestsPerSubscription addObject:&unk_1F4870178];
    }
  }

  return v8;
}

- (void)requestDemand:(int64_t)demand
{
  selfCopy = self;
  if (demand <= 0)
  {
    [_BPSAbstractCorrelateOrderedMerge requestDemand:];
  }

  os_unfair_lock_lock(&selfCopy->_lock);
  if ([(_BPSAbstractCorrelateOrderedMerge *)selfCopy cancelled]|| [(_BPSAbstractCorrelateOrderedMerge *)selfCopy finished]|| [(_BPSAbstractCorrelateOrderedMerge *)selfCopy errored])
  {
    os_unfair_lock_unlock(&selfCopy->_lock);
  }

  else
  {
    subscriptions = [(_BPSAbstractCorrelateOrderedMerge *)selfCopy subscriptions];
    v6 = [subscriptions copy];

    requestsPerSubscription = [(_BPSAbstractCorrelateOrderedMerge *)selfCopy requestsPerSubscription];
    [(_BPSAbstractCorrelateOrderedMerge *)selfCopy setDemand:[(_BPSAbstractCorrelateOrderedMerge *)selfCopy demand]+ demand];
    os_unfair_lock_unlock(&selfCopy->_lock);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __51___BPSAbstractCorrelateOrderedMerge_requestDemand___block_invoke;
    v11[3] = &unk_1E8320DC0;
    v8 = requestsPerSubscription;
    v12 = v8;
    [v6 enumerateObjectsUsingBlock:v11];
    os_unfair_lock_lock(&selfCopy->_lock);
    if (![(_BPSAbstractCorrelateOrderedMerge *)selfCopy recursion]&& [(_BPSAbstractCorrelateOrderedMerge *)selfCopy demand]>= 1)
    {
      [(_BPSAbstractCorrelateOrderedMerge *)selfCopy flushBufferAndRequestMoreWhileLocked];
    }

    finishCount = [(_BPSAbstractCorrelateOrderedMerge *)selfCopy finishCount];
    if (finishCount == [(_BPSAbstractCorrelateOrderedMerge *)selfCopy upstreamCount]&& [(_BPSAbstractCorrelateOrderedMerge *)selfCopy _isBuffersEmpty])
    {
      os_unfair_lock_unlock(&selfCopy->_lock);
      [(_BPSAbstractCorrelateOrderedMerge *)selfCopy _guardedBecomeTerminal];
      os_unfair_lock_lock(&selfCopy->_lock);
      v10 = +[BPSCompletion success];
      [(_BPSAbstractCorrelateOrderedMerge *)selfCopy _completeWhileLockedWithCompletion:v10];
    }

    os_unfair_lock_unlock(&selfCopy->_lock);
  }
}

- (BOOL)isWaitingForMoreValues
{
  completedUpstreamIndexes = [(_BPSAbstractCorrelateOrderedMerge *)self completedUpstreamIndexes];
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  buffers = [(_BPSAbstractCorrelateOrderedMerge *)self buffers];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59___BPSAbstractCorrelateOrderedMerge_isWaitingForMoreValues__block_invoke;
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
  if ([(_BPSAbstractCorrelateOrderedMerge *)self upstreamCount]<= index)
  {
    [_BPSAbstractCorrelateOrderedMerge receiveSubscription:atIndex:];
  }

  os_unfair_lock_lock(&self->_lock);
  if ([(_BPSAbstractCorrelateOrderedMerge *)self cancelled])
  {
    goto LABEL_8;
  }

  if ([(_BPSAbstractCorrelateOrderedMerge *)self finished])
  {
    goto LABEL_8;
  }

  if ([(_BPSAbstractCorrelateOrderedMerge *)self errored])
  {
    goto LABEL_8;
  }

  subscriptions = [(_BPSAbstractCorrelateOrderedMerge *)self subscriptions];
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
    subscriptions2 = [(_BPSAbstractCorrelateOrderedMerge *)self subscriptions];
    [subscriptions2 setObject:subscriptionCopy atIndexedSubscript:index];

    requestsPerSubscription = [(_BPSAbstractCorrelateOrderedMerge *)self requestsPerSubscription];
    [requestsPerSubscription setObject:&unk_1F4870190 atIndexedSubscript:index];

    os_unfair_lock_unlock(&self->_lock);
    [subscriptionCopy requestDemand:1];
  }
}

- (int64_t)receiveInput:(id)input atIndex:(unint64_t)index
{
  v28[1] = *MEMORY[0x1E69E9840];
  inputCopy = input;
  selfCopy = self;
  if ([(_BPSAbstractCorrelateOrderedMerge *)selfCopy upstreamCount]<= index)
  {
    [_BPSAbstractCorrelateOrderedMerge receiveInput:atIndex:];
  }

  os_unfair_lock_lock(&selfCopy->_lock);
  if (![(_BPSAbstractCorrelateOrderedMerge *)selfCopy cancelled]&& ![(_BPSAbstractCorrelateOrderedMerge *)selfCopy finished]&& ![(_BPSAbstractCorrelateOrderedMerge *)selfCopy errored])
  {
    buffers = [(_BPSAbstractCorrelateOrderedMerge *)selfCopy buffers];
    v12 = [buffers objectAtIndexedSubscript:index];

    null = [MEMORY[0x1E695DFB0] null];
    v14 = [v12 isEqual:null];

    if (v14)
    {
      v28[0] = inputCopy;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
      v16 = [v15 mutableCopy];
      buffers2 = [(_BPSAbstractCorrelateOrderedMerge *)selfCopy buffers];
      [buffers2 setObject:v16 atIndexedSubscript:index];
    }

    else
    {
      [v12 addObject:inputCopy];
      if ([v12 count] >= 2)
      {
        [_BPSAbstractCorrelateOrderedMerge receiveInput:v12 atIndex:?];
      }
    }

    if (![(_BPSAbstractCorrelateOrderedMerge *)selfCopy recursion]&& [(_BPSAbstractCorrelateOrderedMerge *)selfCopy demand])
    {
      [(_BPSAbstractCorrelateOrderedMerge *)selfCopy flushBufferAndRequestMoreWhileLocked];
    }

    v8 = 0;
    requestsPerSubscription = [(_BPSAbstractCorrelateOrderedMerge *)selfCopy requestsPerSubscription];
    v19 = [requestsPerSubscription objectAtIndexedSubscript:index];

    if (-[_BPSAbstractCorrelateOrderedMerge isWaitingForMoreValues](selfCopy, "isWaitingForMoreValues") && [v19 integerValue] > 0)
    {
      goto LABEL_22;
    }

    v27 = v12;
    buffers3 = [(_BPSAbstractCorrelateOrderedMerge *)selfCopy buffers];
    v21 = [buffers3 objectAtIndexedSubscript:index];
    null2 = [MEMORY[0x1E695DFB0] null];
    if ([v21 isEqual:null2])
    {

      v12 = v27;
    }

    else
    {
      [(_BPSAbstractCorrelateOrderedMerge *)selfCopy buffers];
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

      buffers3 = [(_BPSAbstractCorrelateOrderedMerge *)selfCopy requestsPerSubscription];
      [buffers3 setObject:&unk_1F4870190 atIndexedSubscript:index];
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
  buffers = [(_BPSAbstractCorrelateOrderedMerge *)self buffers];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52___BPSAbstractCorrelateOrderedMerge__isBuffersEmpty__block_invoke;
  v7[3] = &unk_1E8320E10;
  v7[4] = &v8;
  [buffers enumerateObjectsUsingBlock:v7];

  v4 = *(v9 + 6);
  buffers2 = [(_BPSAbstractCorrelateOrderedMerge *)self buffers];
  LOBYTE(v4) = [buffers2 count] == v4;

  _Block_object_dispose(&v8, 8);
  return v4;
}

- (void)_completeWhileLockedWithCompletion:(id)completion
{
  completionCopy = completion;
  [(_BPSAbstractCorrelateOrderedMerge *)self setFinished:1];
  if ([(_BPSAbstractCorrelateOrderedMerge *)self upstreamCount])
  {
    v4 = 0;
    do
    {
      completedUpstreamIndexes = [(_BPSAbstractCorrelateOrderedMerge *)self completedUpstreamIndexes];
      v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v4];
      [completedUpstreamIndexes addObject:v6];

      ++v4;
    }

    while (v4 < [(_BPSAbstractCorrelateOrderedMerge *)self upstreamCount]);
  }

  downstream = [(_BPSAbstractCorrelateOrderedMerge *)self downstream];
  [(_BPSAbstractCorrelateOrderedMerge *)self setDownstream:0];
  os_unfair_lock_unlock(&self->_lock);
  os_unfair_recursive_lock_lock_with_options();
  [downstream receiveCompletion:completionCopy];
  os_unfair_recursive_lock_unlock();
  os_unfair_lock_lock(&self->_lock);
}

- (void)_guardedBecomeTerminal
{
  os_unfair_lock_lock(&self->_lock);
  [(_BPSAbstractCorrelateOrderedMerge *)self setFinished:1];
  subscriptions = [(_BPSAbstractCorrelateOrderedMerge *)self subscriptions];
  v17 = [subscriptions copy];

  if ([v17 count])
  {
    v4 = 0;
    do
    {
      [(_BPSAbstractCorrelateOrderedMerge *)self updateBookmarksWhenLockedForIndex:v4];
      null = [MEMORY[0x1E695DFB0] null];
      subscriptions2 = [(_BPSAbstractCorrelateOrderedMerge *)self subscriptions];
      [subscriptions2 setObject:null atIndexedSubscript:v4];

      requestsPerSubscription = [(_BPSAbstractCorrelateOrderedMerge *)self requestsPerSubscription];
      [requestsPerSubscription setObject:&unk_1F4870178 atIndexedSubscript:v4];

      ++v4;
    }

    while (v4 < [v17 count]);
  }

  buffers = [(_BPSAbstractCorrelateOrderedMerge *)self buffers];
  v9 = [buffers count];

  if (v9)
  {
    v10 = 0;
    do
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      buffers2 = [(_BPSAbstractCorrelateOrderedMerge *)self buffers];
      [buffers2 setObject:null2 atIndexedSubscript:v10];

      ++v10;
      buffers3 = [(_BPSAbstractCorrelateOrderedMerge *)self buffers];
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
    [(_BPSAbstractCorrelateOrderedMerge *)selfCopy _guardedBecomeTerminal];
    os_unfair_lock_lock(&selfCopy->_lock);
    [(_BPSAbstractCorrelateOrderedMerge *)selfCopy setErrored:1];
    downstream = [(_BPSAbstractCorrelateOrderedMerge *)selfCopy downstream];
    [(_BPSAbstractCorrelateOrderedMerge *)selfCopy setDownstream:0];
    os_unfair_lock_unlock(&selfCopy->_lock);
    os_unfair_recursive_lock_lock_with_options();
    [downstream receiveCompletion:completionCopy];
    os_unfair_recursive_lock_unlock();
  }

  else if (!state)
  {
    os_unfair_lock_lock(&selfCopy->_lock);
    completedUpstreamIndexes = [(_BPSAbstractCorrelateOrderedMerge *)selfCopy completedUpstreamIndexes];
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:index];
    [completedUpstreamIndexes addObject:v11];

    if (![(_BPSAbstractCorrelateOrderedMerge *)selfCopy finished])
    {
      [(_BPSAbstractCorrelateOrderedMerge *)selfCopy setFinishCount:[(_BPSAbstractCorrelateOrderedMerge *)selfCopy finishCount]+ 1];
      [(_BPSAbstractCorrelateOrderedMerge *)selfCopy updateBookmarksWhenLockedForIndex:index];
      null = [MEMORY[0x1E695DFB0] null];
      subscriptions = [(_BPSAbstractCorrelateOrderedMerge *)selfCopy subscriptions];
      [subscriptions setObject:null atIndexedSubscript:index];

      requestsPerSubscription = [(_BPSAbstractCorrelateOrderedMerge *)selfCopy requestsPerSubscription];
      [requestsPerSubscription setObject:&unk_1F4870178 atIndexedSubscript:index];

      if (![(_BPSAbstractCorrelateOrderedMerge *)selfCopy recursion]&& [(_BPSAbstractCorrelateOrderedMerge *)selfCopy demand])
      {
        [(_BPSAbstractCorrelateOrderedMerge *)selfCopy flushBufferAndRequestMoreWhileLocked];
      }

      finishCount = [(_BPSAbstractCorrelateOrderedMerge *)selfCopy finishCount];
      if (finishCount == [(_BPSAbstractCorrelateOrderedMerge *)selfCopy upstreamCount]&& [(_BPSAbstractCorrelateOrderedMerge *)selfCopy _isBuffersEmpty])
      {
        os_unfair_lock_unlock(&selfCopy->_lock);
        [(_BPSAbstractCorrelateOrderedMerge *)selfCopy _guardedBecomeTerminal];
        os_unfair_lock_lock(&selfCopy->_lock);
        [(_BPSAbstractCorrelateOrderedMerge *)selfCopy _completeWhileLockedWithCompletion:completionCopy];
      }
    }

    os_unfair_lock_unlock(&selfCopy->_lock);
  }
}

- (void)flushBufferAndRequestMoreWhileLocked
{
  downstream = [(_BPSAbstractCorrelateOrderedMerge *)self downstream];
  if (downstream)
  {
    v5 = downstream;
    downstream2 = [(_BPSAbstractCorrelateOrderedMerge *)self downstream];
    v7 = [downstream2 conformsToProtocol:&unk_1F4872A68];

    if ((v7 & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"BPSCorrelateOrderedMerge.m" lineNumber:313 description:@"Downstream should conform to BPSCorrelationProducer protocol"];
    }
  }

  if ([(_BPSAbstractCorrelateOrderedMerge *)self demand]>= 1)
  {
    while (![(_BPSAbstractCorrelateOrderedMerge *)self isWaitingForMoreValues])
    {
      v25 = 0;
      v9 = [(_BPSAbstractCorrelateOrderedMerge *)self nextValueIndex:&v25];
      v10 = v25;
      v11 = v10;
      if (!v9)
      {

        return;
      }

      [(_BPSAbstractCorrelateOrderedMerge *)self setDemand:[(_BPSAbstractCorrelateOrderedMerge *)self demand]- 1];
      [(_BPSAbstractCorrelateOrderedMerge *)self setRecursion:1];
      integerValue = [v11 integerValue];
      requestsPerSubscription = [(_BPSAbstractCorrelateOrderedMerge *)self requestsPerSubscription];
      v14 = [requestsPerSubscription objectAtIndexedSubscript:integerValue];

      v15 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v14, "integerValue") - 1}];
      requestsPerSubscription2 = [(_BPSAbstractCorrelateOrderedMerge *)self requestsPerSubscription];
      [requestsPerSubscription2 setObject:v15 atIndexedSubscript:integerValue];

      subscriptions = [(_BPSAbstractCorrelateOrderedMerge *)self subscriptions];
      v18 = [subscriptions objectAtIndexedSubscript:integerValue];

      downstream3 = [(_BPSAbstractCorrelateOrderedMerge *)self downstream];
      os_unfair_lock_unlock(&self->_lock);
      os_unfair_recursive_lock_lock_with_options();
      v20 = [downstream3 receiveInput:v9 source:{+[BPSCorrelate correlateSourceForIndex:](BPSCorrelate, "correlateSourceForIndex:", integerValue)}];
      os_unfair_recursive_lock_unlock();
      os_unfair_lock_lock(&self->_lock);
      [(_BPSAbstractCorrelateOrderedMerge *)self setRecursion:0];
      if (v20 >= 1)
      {
        [(_BPSAbstractCorrelateOrderedMerge *)self setDemand:[(_BPSAbstractCorrelateOrderedMerge *)self demand]+ v20];
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        requestsPerSubscription3 = [(_BPSAbstractCorrelateOrderedMerge *)self requestsPerSubscription];
        v22 = [requestsPerSubscription3 objectAtIndexedSubscript:integerValue];
        if ([v22 integerValue])
        {
        }

        else
        {
          demand = [(_BPSAbstractCorrelateOrderedMerge *)self demand];

          if (demand >= 1)
          {
            requestsPerSubscription4 = [(_BPSAbstractCorrelateOrderedMerge *)self requestsPerSubscription];
            [requestsPerSubscription4 setObject:&unk_1F4870190 atIndexedSubscript:integerValue];

            os_unfair_lock_unlock(&self->_lock);
            [v18 requestDemand:1];
            os_unfair_lock_lock(&self->_lock);
          }
        }
      }

      if ([(_BPSAbstractCorrelateOrderedMerge *)self demand]<= 0)
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
  buffers = [(_BPSAbstractCorrelateOrderedMerge *)self buffers];
  v6 = [buffers mutableCopy];

  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x3032000000;
  v11[3] = __Block_byref_object_copy__1;
  v11[4] = __Block_byref_object_dispose__1;
  v12 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __52___BPSAbstractCorrelateOrderedMerge_nextValueIndex___block_invoke;
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
    [(_BPSAbstractCorrelateOrderedMerge *)self setBuffers:v6];
  }

  _Block_object_dispose(v11, 8);

  _Block_object_dispose(&v13, 8);

  return v7;
}

- (void)cancel
{
  selfCopy = self;
  [(_BPSAbstractCorrelateOrderedMerge *)selfCopy _guardedBecomeTerminal];
  os_unfair_lock_lock(&selfCopy->_lock);
  [(_BPSAbstractCorrelateOrderedMerge *)selfCopy setCancelled:1];
  [(_BPSAbstractCorrelateOrderedMerge *)selfCopy setDownstream:0];
  os_unfair_lock_unlock(&selfCopy->_lock);
}

- (id)upstreamSubscriptions
{
  subscriptions = [(_BPSAbstractCorrelateOrderedMerge *)self subscriptions];
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
  subscriptions = [(_BPSAbstractCorrelateOrderedMerge *)self subscriptions];
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

@end