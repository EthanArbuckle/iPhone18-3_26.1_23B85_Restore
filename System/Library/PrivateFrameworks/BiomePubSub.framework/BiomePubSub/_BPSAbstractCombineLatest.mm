@interface _BPSAbstractCombineLatest
- (_BPSAbstractCombineLatest)initWithDownstream:(id)a3 upstreamCount:(unint64_t)a4;
- (int64_t)receiveInput:(id)a3 atIndex:(unint64_t)a4;
- (void)cancel;
- (void)receiveCompletion:(id)a3 atIndex:(unint64_t)a4;
- (void)receiveSubscription:(id)a3 atIndex:(unint64_t)a4;
- (void)requestDemand:(int64_t)a3;
@end

@implementation _BPSAbstractCombineLatest

- (_BPSAbstractCombineLatest)initWithDownstream:(id)a3 upstreamCount:(unint64_t)a4
{
  v7 = a3;
  v19.receiver = self;
  v19.super_class = _BPSAbstractCombineLatest;
  v8 = [(_BPSAbstractCombineLatest *)&v19 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_downstream, a3);
    v9->_upstreamCount = a4;
    v9->_recursion = 0;
    v9->_finished = 0;
    v9->_errored = 0;
    v9->_cancelled = 0;
    v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:a4];
    subscriptions = v9->_subscriptions;
    v9->_subscriptions = v10;

    v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:a4];
    buffers = v9->_buffers;
    v9->_buffers = v12;

    v9->_demand = 0;
    v9->_lock._os_unfair_lock_opaque = 0;
    for (v9->_downstreamLock = 0; a4; --a4)
    {
      v14 = v9->_subscriptions;
      v15 = [MEMORY[0x1E695DFB0] null];
      [(NSMutableArray *)v14 addObject:v15];

      v16 = v9->_buffers;
      v17 = [MEMORY[0x1E695DFB0] null];
      [(NSMutableArray *)v16 addObject:v17];
    }
  }

  return v9;
}

- (void)requestDemand:(int64_t)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = self;
  if (a3 <= 0)
  {
    [_BPSAbstractCombineLatest requestDemand:];
  }

  os_unfair_lock_lock(&v4->_lock);
  if ([(_BPSAbstractCombineLatest *)v4 cancelled]|| [(_BPSAbstractCombineLatest *)v4 finished])
  {
    os_unfair_lock_unlock(&v4->_lock);
  }

  else
  {
    v5 = [(_BPSAbstractCombineLatest *)v4 subscriptions];
    v6 = [v5 copy];

    [(_BPSAbstractCombineLatest *)v4 setDemand:[(_BPSAbstractCombineLatest *)v4 demand]+ a3];
    os_unfair_lock_unlock(&v4->_lock);
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
          v13 = [MEMORY[0x1E695DFB0] null];
          v14 = [v12 isEqual:v13];

          if ((v14 & 1) == 0)
          {
            [v12 requestDemand:a3];
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

- (void)receiveSubscription:(id)a3 atIndex:(unint64_t)a4
{
  v11 = a3;
  if ([(_BPSAbstractCombineLatest *)self upstreamCount]<= a4)
  {
    [_BPSAbstractCombineLatest receiveSubscription:atIndex:];
  }

  os_unfair_lock_lock(&self->_lock);
  if ([(_BPSAbstractCombineLatest *)self cancelled])
  {
    goto LABEL_6;
  }

  v6 = [(_BPSAbstractCombineLatest *)self subscriptions];
  v7 = [v6 objectAtIndexedSubscript:a4];
  v8 = [MEMORY[0x1E695DFB0] null];
  v9 = [v7 isEqual:v8];

  if ((v9 & 1) == 0)
  {
LABEL_6:
    os_unfair_lock_unlock(&self->_lock);
    NSLog(&cfstr_ShouldCancelSu.isa);
    [v11 cancel];
  }

  else
  {
    v10 = [(_BPSAbstractCombineLatest *)self subscriptions];
    [v10 setObject:v11 atIndexedSubscript:a4];

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (int64_t)receiveInput:(id)a3 atIndex:(unint64_t)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = self;
  if ([(_BPSAbstractCombineLatest *)v7 upstreamCount]<= a4)
  {
    [_BPSAbstractCombineLatest receiveInput:atIndex:];
  }

  os_unfair_lock_lock(&v7->_lock);
  if ([(_BPSAbstractCombineLatest *)v7 cancelled]|| [(_BPSAbstractCombineLatest *)v7 finished])
  {
    goto LABEL_22;
  }

  if (!v6)
  {
    [_BPSAbstractCombineLatest receiveInput:atIndex:];
  }

  v8 = [(_BPSAbstractCombineLatest *)v7 buffers];
  [v8 setObject:v6 atIndexedSubscript:a4];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = [(_BPSAbstractCombineLatest *)v7 buffers];
  v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v10)
  {
    v11 = *v22;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          LOBYTE(v10) = 1;
          goto LABEL_17;
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_17:

  if ([(_BPSAbstractCombineLatest *)v7 recursion]|| ([(_BPSAbstractCombineLatest *)v7 demand]< 1 ? (v14 = 1) : (v14 = v10), (v14 & 1) != 0))
  {
LABEL_22:
    os_unfair_lock_unlock(&v7->_lock);
  }

  else
  {
    [(_BPSAbstractCombineLatest *)v7 setDemand:[(_BPSAbstractCombineLatest *)v7 demand]- 1];
    v17 = [(_BPSAbstractCombineLatest *)v7 buffers];
    os_unfair_lock_unlock(&v7->_lock);
    v18 = [(_BPSAbstractCombineLatest *)v7 convertValues:v17];
    os_unfair_lock_lock(&v7->_lock);
    [(_BPSAbstractCombineLatest *)v7 setRecursion:1];
    os_unfair_lock_unlock(&v7->_lock);
    os_unfair_recursive_lock_lock_with_options();
    v19 = [(_BPSAbstractCombineLatest *)v7 downstream];
    v20 = [v19 receiveInput:v18];

    os_unfair_recursive_lock_unlock();
    os_unfair_lock_lock(&v7->_lock);
    [(_BPSAbstractCombineLatest *)v7 setRecursion:0];
    if (v20 >= 1)
    {
      [(_BPSAbstractCombineLatest *)v7 setDemand:[(_BPSAbstractCombineLatest *)v7 demand]+ v20];
    }

    os_unfair_lock_unlock(&v7->_lock);
  }

  v15 = *MEMORY[0x1E69E9840];
  return 0;
}

- (void)receiveCompletion:(id)a3 atIndex:(unint64_t)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = self;
  v8 = [v6 state];
  if (v8 == 1)
  {
    v16 = __biome_log_for_category();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v28 = objc_opt_class();
      v29 = v28;
      v30 = [v6 error];
      *buf = 138412802;
      v33 = v28;
      v34 = 2048;
      v35 = a4;
      v36 = 2112;
      v37 = v30;
      _os_log_error_impl(&dword_1C871B000, v16, OS_LOG_TYPE_ERROR, "%@ - Complete at index: %lud with error: %@", buf, 0x20u);
    }

    os_unfair_lock_lock(&v7->_lock);
    [(_BPSAbstractCombineLatest *)v7 setFinished:1];
    [(_BPSAbstractCombineLatest *)v7 setErrored:1];
    v17 = MEMORY[0x1E695DEC8];
    v18 = [(_BPSAbstractCombineLatest *)v7 subscriptions];
    v19 = [v17 arrayWithArray:v18];

    if ([v19 count])
    {
      v20 = 0;
      do
      {
        v21 = [MEMORY[0x1E695DFB0] null];
        v22 = [(_BPSAbstractCombineLatest *)v7 subscriptions];
        [v22 setObject:v21 atIndexedSubscript:v20];

        ++v20;
      }

      while ([v19 count] > v20);
    }

    if ([(_BPSAbstractCombineLatest *)v7 upstreamCount])
    {
      v23 = 0;
      do
      {
        v24 = [MEMORY[0x1E695DFB0] null];
        v25 = [(_BPSAbstractCombineLatest *)v7 buffers];
        [v25 setObject:v24 atIndexedSubscript:v23];

        ++v23;
      }

      while (v23 < [(_BPSAbstractCombineLatest *)v7 upstreamCount]);
    }

    os_unfair_lock_unlock(&v7->_lock);
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __55___BPSAbstractCombineLatest_receiveCompletion_atIndex___block_invoke;
    v31[3] = &__block_descriptor_40_e32_v32__0__BPSSubscription_8Q16_B24l;
    v31[4] = a4;
    [v19 enumerateObjectsUsingBlock:v31];
    os_unfair_recursive_lock_lock_with_options();
    v26 = [(_BPSAbstractCombineLatest *)v7 downstream];
    [v26 receiveCompletion:v6];

    os_unfair_recursive_lock_unlock();
  }

  else if (!v8)
  {
    os_unfair_lock_lock(&v7->_lock);
    if ([(_BPSAbstractCombineLatest *)v7 finished])
    {
      goto LABEL_18;
    }

    [(_BPSAbstractCombineLatest *)v7 setFinishCount:[(_BPSAbstractCombineLatest *)v7 finishCount]+ 1];
    v9 = [MEMORY[0x1E695DFB0] null];
    v10 = [(_BPSAbstractCombineLatest *)v7 subscriptions];
    [v10 setObject:v9 atIndexedSubscript:a4];

    v11 = [(_BPSAbstractCombineLatest *)v7 finishCount];
    if (v11 != [(_BPSAbstractCombineLatest *)v7 upstreamCount])
    {
LABEL_18:
      os_unfair_lock_unlock(&v7->_lock);
    }

    else
    {
      [(_BPSAbstractCombineLatest *)v7 setFinished:1];
      if ([(_BPSAbstractCombineLatest *)v7 upstreamCount])
      {
        v12 = 0;
        do
        {
          v13 = [MEMORY[0x1E695DFB0] null];
          v14 = [(_BPSAbstractCombineLatest *)v7 buffers];
          [v14 setObject:v13 atIndexedSubscript:v12];

          ++v12;
        }

        while (v12 < [(_BPSAbstractCombineLatest *)v7 upstreamCount]);
      }

      os_unfair_lock_unlock(&v7->_lock);
      os_unfair_recursive_lock_lock_with_options();
      v15 = [(_BPSAbstractCombineLatest *)v7 downstream];
      [v15 receiveCompletion:v6];

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