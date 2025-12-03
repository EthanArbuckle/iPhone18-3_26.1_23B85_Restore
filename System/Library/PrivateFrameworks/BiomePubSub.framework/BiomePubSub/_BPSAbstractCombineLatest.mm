@interface _BPSAbstractCombineLatest
- (_BPSAbstractCombineLatest)initWithDownstream:(id)downstream upstreamCount:(unint64_t)count;
- (int64_t)receiveInput:(id)input atIndex:(unint64_t)index;
- (void)cancel;
- (void)receiveCompletion:(id)completion atIndex:(unint64_t)index;
- (void)receiveSubscription:(id)subscription atIndex:(unint64_t)index;
- (void)requestDemand:(int64_t)demand;
@end

@implementation _BPSAbstractCombineLatest

- (_BPSAbstractCombineLatest)initWithDownstream:(id)downstream upstreamCount:(unint64_t)count
{
  downstreamCopy = downstream;
  v19.receiver = self;
  v19.super_class = _BPSAbstractCombineLatest;
  v8 = [(_BPSAbstractCombineLatest *)&v19 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_downstream, downstream);
    v9->_upstreamCount = count;
    v9->_recursion = 0;
    v9->_finished = 0;
    v9->_errored = 0;
    v9->_cancelled = 0;
    v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:count];
    subscriptions = v9->_subscriptions;
    v9->_subscriptions = v10;

    v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:count];
    buffers = v9->_buffers;
    v9->_buffers = v12;

    v9->_demand = 0;
    v9->_lock._os_unfair_lock_opaque = 0;
    for (v9->_downstreamLock = 0; count; --count)
    {
      v14 = v9->_subscriptions;
      null = [MEMORY[0x1E695DFB0] null];
      [(NSMutableArray *)v14 addObject:null];

      v16 = v9->_buffers;
      null2 = [MEMORY[0x1E695DFB0] null];
      [(NSMutableArray *)v16 addObject:null2];
    }
  }

  return v9;
}

- (void)requestDemand:(int64_t)demand
{
  v21 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  if (demand <= 0)
  {
    [_BPSAbstractCombineLatest requestDemand:];
  }

  os_unfair_lock_lock(&selfCopy->_lock);
  if ([(_BPSAbstractCombineLatest *)selfCopy cancelled]|| [(_BPSAbstractCombineLatest *)selfCopy finished])
  {
    os_unfair_lock_unlock(&selfCopy->_lock);
  }

  else
  {
    subscriptions = [(_BPSAbstractCombineLatest *)selfCopy subscriptions];
    v6 = [subscriptions copy];

    [(_BPSAbstractCombineLatest *)selfCopy setDemand:[(_BPSAbstractCombineLatest *)selfCopy demand]+ demand];
    os_unfair_lock_unlock(&selfCopy->_lock);
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        v11 = 0;
        do
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v16 + 1) + 8 * v11);
          null = [MEMORY[0x1E695DFB0] null];
          v14 = [v12 isEqual:null];

          if ((v14 & 1) == 0)
          {
            [v12 requestDemand:demand];
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)receiveSubscription:(id)subscription atIndex:(unint64_t)index
{
  subscriptionCopy = subscription;
  if ([(_BPSAbstractCombineLatest *)self upstreamCount]<= index)
  {
    [_BPSAbstractCombineLatest receiveSubscription:atIndex:];
  }

  os_unfair_lock_lock(&self->_lock);
  if ([(_BPSAbstractCombineLatest *)self cancelled])
  {
    goto LABEL_6;
  }

  subscriptions = [(_BPSAbstractCombineLatest *)self subscriptions];
  v7 = [subscriptions objectAtIndexedSubscript:index];
  null = [MEMORY[0x1E695DFB0] null];
  v9 = [v7 isEqual:null];

  if ((v9 & 1) == 0)
  {
LABEL_6:
    os_unfair_lock_unlock(&self->_lock);
    NSLog(&cfstr_ShouldCancelSu.isa);
    [subscriptionCopy cancel];
  }

  else
  {
    subscriptions2 = [(_BPSAbstractCombineLatest *)self subscriptions];
    [subscriptions2 setObject:subscriptionCopy atIndexedSubscript:index];

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (int64_t)receiveInput:(id)input atIndex:(unint64_t)index
{
  v26 = *MEMORY[0x1E69E9840];
  inputCopy = input;
  selfCopy = self;
  if ([(_BPSAbstractCombineLatest *)selfCopy upstreamCount]<= index)
  {
    [_BPSAbstractCombineLatest receiveInput:atIndex:];
  }

  os_unfair_lock_lock(&selfCopy->_lock);
  if ([(_BPSAbstractCombineLatest *)selfCopy cancelled]|| [(_BPSAbstractCombineLatest *)selfCopy finished])
  {
    goto LABEL_22;
  }

  if (!inputCopy)
  {
    [_BPSAbstractCombineLatest receiveInput:atIndex:];
  }

  buffers = [(_BPSAbstractCombineLatest *)selfCopy buffers];
  [buffers setObject:inputCopy atIndexedSubscript:index];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  buffers2 = [(_BPSAbstractCombineLatest *)selfCopy buffers];
  v10 = [buffers2 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v10)
  {
    v11 = *v22;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(buffers2);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          LOBYTE(v10) = 1;
          goto LABEL_17;
        }
      }

      v10 = [buffers2 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_17:

  if ([(_BPSAbstractCombineLatest *)selfCopy recursion]|| ([(_BPSAbstractCombineLatest *)selfCopy demand]< 1 ? (v14 = 1) : (v14 = v10), (v14 & 1) != 0))
  {
LABEL_22:
    os_unfair_lock_unlock(&selfCopy->_lock);
  }

  else
  {
    [(_BPSAbstractCombineLatest *)selfCopy setDemand:[(_BPSAbstractCombineLatest *)selfCopy demand]- 1];
    buffers3 = [(_BPSAbstractCombineLatest *)selfCopy buffers];
    os_unfair_lock_unlock(&selfCopy->_lock);
    v18 = [(_BPSAbstractCombineLatest *)selfCopy convertValues:buffers3];
    os_unfair_lock_lock(&selfCopy->_lock);
    [(_BPSAbstractCombineLatest *)selfCopy setRecursion:1];
    os_unfair_lock_unlock(&selfCopy->_lock);
    os_unfair_recursive_lock_lock_with_options();
    downstream = [(_BPSAbstractCombineLatest *)selfCopy downstream];
    v20 = [downstream receiveInput:v18];

    os_unfair_recursive_lock_unlock();
    os_unfair_lock_lock(&selfCopy->_lock);
    [(_BPSAbstractCombineLatest *)selfCopy setRecursion:0];
    if (v20 >= 1)
    {
      [(_BPSAbstractCombineLatest *)selfCopy setDemand:[(_BPSAbstractCombineLatest *)selfCopy demand]+ v20];
    }

    os_unfair_lock_unlock(&selfCopy->_lock);
  }

  v15 = *MEMORY[0x1E69E9840];
  return 0;
}

- (void)receiveCompletion:(id)completion atIndex:(unint64_t)index
{
  v38 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  selfCopy = self;
  state = [completionCopy state];
  if (state == 1)
  {
    v16 = __biome_log_for_category();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v28 = objc_opt_class();
      v29 = v28;
      error = [completionCopy error];
      *buf = 138412802;
      v33 = v28;
      v34 = 2048;
      indexCopy = index;
      v36 = 2112;
      v37 = error;
      _os_log_error_impl(&dword_1C871B000, v16, OS_LOG_TYPE_ERROR, "%@ - Complete at index: %lud with error: %@", buf, 0x20u);
    }

    os_unfair_lock_lock(&selfCopy->_lock);
    [(_BPSAbstractCombineLatest *)selfCopy setFinished:1];
    [(_BPSAbstractCombineLatest *)selfCopy setErrored:1];
    v17 = MEMORY[0x1E695DEC8];
    subscriptions = [(_BPSAbstractCombineLatest *)selfCopy subscriptions];
    v19 = [v17 arrayWithArray:subscriptions];

    if ([v19 count])
    {
      v20 = 0;
      do
      {
        null = [MEMORY[0x1E695DFB0] null];
        subscriptions2 = [(_BPSAbstractCombineLatest *)selfCopy subscriptions];
        [subscriptions2 setObject:null atIndexedSubscript:v20];

        ++v20;
      }

      while ([v19 count] > v20);
    }

    if ([(_BPSAbstractCombineLatest *)selfCopy upstreamCount])
    {
      v23 = 0;
      do
      {
        null2 = [MEMORY[0x1E695DFB0] null];
        buffers = [(_BPSAbstractCombineLatest *)selfCopy buffers];
        [buffers setObject:null2 atIndexedSubscript:v23];

        ++v23;
      }

      while (v23 < [(_BPSAbstractCombineLatest *)selfCopy upstreamCount]);
    }

    os_unfair_lock_unlock(&selfCopy->_lock);
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __55___BPSAbstractCombineLatest_receiveCompletion_atIndex___block_invoke;
    v31[3] = &__block_descriptor_40_e32_v32__0__BPSSubscription_8Q16_B24l;
    v31[4] = index;
    [v19 enumerateObjectsUsingBlock:v31];
    os_unfair_recursive_lock_lock_with_options();
    downstream = [(_BPSAbstractCombineLatest *)selfCopy downstream];
    [downstream receiveCompletion:completionCopy];

    os_unfair_recursive_lock_unlock();
  }

  else if (!state)
  {
    os_unfair_lock_lock(&selfCopy->_lock);
    if ([(_BPSAbstractCombineLatest *)selfCopy finished])
    {
      goto LABEL_18;
    }

    [(_BPSAbstractCombineLatest *)selfCopy setFinishCount:[(_BPSAbstractCombineLatest *)selfCopy finishCount]+ 1];
    null3 = [MEMORY[0x1E695DFB0] null];
    subscriptions3 = [(_BPSAbstractCombineLatest *)selfCopy subscriptions];
    [subscriptions3 setObject:null3 atIndexedSubscript:index];

    finishCount = [(_BPSAbstractCombineLatest *)selfCopy finishCount];
    if (finishCount != [(_BPSAbstractCombineLatest *)selfCopy upstreamCount])
    {
LABEL_18:
      os_unfair_lock_unlock(&selfCopy->_lock);
    }

    else
    {
      [(_BPSAbstractCombineLatest *)selfCopy setFinished:1];
      if ([(_BPSAbstractCombineLatest *)selfCopy upstreamCount])
      {
        v12 = 0;
        do
        {
          null4 = [MEMORY[0x1E695DFB0] null];
          buffers2 = [(_BPSAbstractCombineLatest *)selfCopy buffers];
          [buffers2 setObject:null4 atIndexedSubscript:v12];

          ++v12;
        }

        while (v12 < [(_BPSAbstractCombineLatest *)selfCopy upstreamCount]);
      }

      os_unfair_lock_unlock(&selfCopy->_lock);
      os_unfair_recursive_lock_lock_with_options();
      downstream2 = [(_BPSAbstractCombineLatest *)selfCopy downstream];
      [downstream2 receiveCompletion:completionCopy];

      os_unfair_recursive_lock_unlock();
    }
  }

  v27 = *MEMORY[0x1E69E9840];
}

- (void)cancel
{
  v7 = *MEMORY[0x1E69E9840];
  v5 = 138412290;
  v6 = objc_opt_class();
  v3 = v6;
  _os_log_debug_impl(&dword_1C871B000, a2, OS_LOG_TYPE_DEBUG, "%@ - Cancel", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

- (void)requestDemand:.cold.1()
{
  OUTLINED_FUNCTION_0_5();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)receiveSubscription:atIndex:.cold.1()
{
  OUTLINED_FUNCTION_0_5();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)receiveInput:atIndex:.cold.1()
{
  OUTLINED_FUNCTION_0_5();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)receiveInput:atIndex:.cold.2()
{
  OUTLINED_FUNCTION_0_5();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end