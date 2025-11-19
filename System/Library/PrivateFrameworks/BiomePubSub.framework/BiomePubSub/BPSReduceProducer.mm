@interface BPSReduceProducer
+ (id)safeMutableCopy:(id)a3;
- (BPSReduceProducer)initWithDownstream:(id)a3 initial:(id)a4 reduce:(id)a5;
- (id)newBookmark;
- (id)receiveNewValue:(id)a3;
- (id)upstreamSubscriptions;
- (int64_t)receiveInput:(id)a3;
- (void)cancel;
- (void)receiveCompletion:(id)a3;
- (void)receiveSubscription:(id)a3;
- (void)requestDemand:(int64_t)a3;
- (void)upstreamSubscriptions;
@end

@implementation BPSReduceProducer

- (BPSReduceProducer)initWithDownstream:(id)a3 initial:(id)a4 reduce:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v23.receiver = self;
  v23.super_class = BPSReduceProducer;
  v12 = [(BPSReduceProducer *)&v23 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_downstream, a3);
    v14 = [BPSReduceProducer safeMutableCopy:v10];
    v15 = v13->_result;
    v13->_result = v14;

    v16 = [BPSReduceProducer safeMutableCopy:v10];
    initial = v13->_initial;
    v13->_initial = v16;

    v18 = _Block_copy(v11);
    reduce = v13->_reduce;
    v13->_reduce = v18;

    v13->_downstreamRequested = 0;
    v13->_cancelled = 0;
    v13->_completed = 0;
    v13->_upstreamCompleted = 0;
    v13->_empty = 0;
    v20 = [[BPSSubscriptionStatus alloc] initWithState:0 subscription:0];
    status = v13->_status;
    v13->_status = v20;

    v13->_lock._os_unfair_lock_opaque = 0;
  }

  return v13;
}

- (id)receiveNewValue:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E696AEC0];
  v6 = NSStringFromSelector(a2);
  v7 = [v5 stringWithFormat:@"Override %@ in a subclass", v6];

  v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v7 userInfo:0];
  objc_exception_throw(v8);
}

- (void)receiveCompletion:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self;
  v6 = __biome_log_for_category();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v19 = 138412290;
    v20 = objc_opt_class();
    _os_log_impl(&dword_1C871B000, v6, OS_LOG_TYPE_INFO, "%@ - completion", &v19, 0xCu);
  }

  os_unfair_lock_lock(&v5->_lock);
  v7 = [(BPSReduceProducer *)v5 status];
  v8 = [v7 state];

  if (v8 != 1)
  {
LABEL_15:
    os_unfair_lock_unlock(&v5->_lock);
    goto LABEL_16;
  }

  v9 = [(BPSReduceProducer *)v5 status];
  [v9 setState:2];

  v10 = [v4 state];
  if (v10 == 1)
  {
    if (![(BPSReduceProducer *)v5 cancelled]&& ![(BPSReduceProducer *)v5 completed]&& ![(BPSReduceProducer *)v5 upstreamCompleted])
    {
      [(BPSReduceProducer *)v5 setUpstreamCompleted:1];
      [(BPSReduceProducer *)v5 setCompleted:1];
      os_unfair_lock_unlock(&v5->_lock);
      v13 = [v4 error];
      v14 = [(BPSReduceProducer *)v5 downstream];
      v15 = [BPSCompletion failureWithError:v13];
      goto LABEL_23;
    }

    goto LABEL_15;
  }

  if (!v10)
  {
    if (![(BPSReduceProducer *)v5 cancelled]&& ![(BPSReduceProducer *)v5 completed]&& ![(BPSReduceProducer *)v5 upstreamCompleted])
    {
      [(BPSReduceProducer *)v5 setUpstreamCompleted:1];
      if ([(BPSReduceProducer *)v5 downstreamRequested]|| [(BPSReduceProducer *)v5 empty])
      {
        v11 = 1;
        [(BPSReduceProducer *)v5 setCompleted:1];
      }

      else
      {
        v11 = 0;
      }

      v13 = [(BPSReduceProducer *)v5 result];
      os_unfair_lock_unlock(&v5->_lock);
      if (!v11)
      {
        goto LABEL_24;
      }

      if (v13)
      {
        v16 = [(BPSReduceProducer *)v5 downstream];
        [v16 receiveInput:v13];
      }

      v14 = [(BPSReduceProducer *)v5 downstream];
      v15 = +[BPSCompletion success];
LABEL_23:
      v17 = v15;
      [v14 receiveCompletion:v15];

LABEL_24:
      os_unfair_lock_lock(&v5->_lock);
      v18 = [(BPSReduceProducer *)v5 status];
      [v18 setSubscription:0];

      os_unfair_lock_unlock(&v5->_lock);
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_16:

  v12 = *MEMORY[0x1E69E9840];
}

- (int64_t)receiveInput:(id)a3
{
  v4 = a3;
  v5 = self;
  os_unfair_lock_lock(&v5->_lock);
  v6 = [(BPSReduceProducer *)v5 status];
  v7 = [v6 state];

  if (v7 == 1)
  {
    [(BPSReduceProducer *)v5 setEmpty:0];
    os_unfair_lock_unlock(&v5->_lock);
    v8 = [(BPSReduceProducer *)v5 receiveNewValue:v4];
    v9 = [v8 state];
    switch(v9)
    {
      case 0:
        os_unfair_lock_lock(&v5->_lock);
        [(BPSReduceProducer *)v5 setUpstreamCompleted:1];
        v18 = [(BPSReduceProducer *)v5 downstreamRequested];
        if (v18)
        {
          [(BPSReduceProducer *)v5 setCompleted:1];
        }

        v19 = [(BPSReduceProducer *)v5 status];
        [v19 setState:2];

        v20 = [(BPSReduceProducer *)v5 result];
        os_unfair_lock_unlock(&v5->_lock);
        v21 = [(BPSReduceProducer *)v5 status];
        v22 = [v21 subscription];
        [v22 cancel];

        if (v18)
        {
          if (v20)
          {
            v23 = [(BPSReduceProducer *)v5 downstream];
            [v23 receiveInput:v20];
          }

          v24 = [(BPSReduceProducer *)v5 downstream];
          v25 = +[BPSCompletion success];
          [v24 receiveCompletion:v25];
        }

        v11 = 0;

        goto LABEL_18;
      case 2:
        os_unfair_lock_lock(&v5->_lock);
        [(BPSReduceProducer *)v5 setUpstreamCompleted:1];
        [(BPSReduceProducer *)v5 setCompleted:1];
        os_unfair_lock_unlock(&v5->_lock);
        v12 = [(BPSReduceProducer *)v5 status];
        [v12 setState:2];

        v13 = [(BPSReduceProducer *)v5 status];
        v14 = [v13 subscription];
        [v14 cancel];

        v15 = [(BPSReduceProducer *)v5 downstream];
        v16 = [v8 error];
        v17 = [BPSCompletion failureWithError:v16];
        [v15 receiveCompletion:v17];

        break;
      case 1:
        break;
      default:
        v10 = __biome_log_for_category();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
        {
          [(BPSReduceProducer *)v5 receiveInput:v8, v10];
        }

        v11 = 1;
        goto LABEL_18;
    }

    v11 = 0;
LABEL_18:

    goto LABEL_19;
  }

  os_unfair_lock_unlock(&v5->_lock);
  v11 = 0;
LABEL_19:

  return v11;
}

- (void)receiveSubscription:(id)a3
{
  v11 = a3;
  os_unfair_lock_lock(&self->_lock);
  v4 = [(BPSReduceProducer *)self status];
  v5 = [v4 state];

  if (v5)
  {
    os_unfair_lock_unlock(&self->_lock);
    v6 = [(BPSReduceProducer *)self status];
    v7 = [v6 subscription];
    [v7 cancel];
  }

  else
  {
    v8 = [(BPSReduceProducer *)self status];
    [v8 setState:1];

    v9 = [(BPSReduceProducer *)self status];
    [v9 setSubscription:v11];

    os_unfair_lock_unlock(&self->_lock);
    v10 = [(BPSReduceProducer *)self downstream];
    [v10 receiveSubscription:self];

    [v11 requestDemand:0x7FFFFFFFFFFFFFFFLL];
  }
}

- (void)cancel
{
  v2 = self;
  v3 = __biome_log_for_category();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(_BPSHandleEventsInner *)v2 cancel];
  }

  os_unfair_lock_lock(&v2->_lock);
  v4 = [(BPSReduceProducer *)v2 status];
  v5 = [v4 state];

  if (v5 == 1)
  {
    [(BPSReduceProducer *)v2 setCancelled:1];
    v6 = [(BPSReduceProducer *)v2 status];
    [v6 setState:2];

    os_unfair_lock_unlock(&v2->_lock);
    v7 = [(BPSReduceProducer *)v2 status];
    v8 = [v7 subscription];
    [v8 cancel];

    os_unfair_lock_lock(&v2->_lock);
    v9 = [(BPSReduceProducer *)v2 status];
    [v9 setSubscription:0];
  }

  os_unfair_lock_unlock(&v2->_lock);
}

- (void)requestDemand:(int64_t)a3
{
  v9 = self;
  if (a3 <= 0)
  {
    [(BPSReduceProducer *)a2 requestDemand:v9];
  }

  os_unfair_lock_lock(&v9->_lock);
  if ([(BPSReduceProducer *)v9 downstreamRequested]|| [(BPSReduceProducer *)v9 cancelled]|| [(BPSReduceProducer *)v9 completed]|| ([(BPSReduceProducer *)v9 setDownstreamRequested:1], ![(BPSReduceProducer *)v9 upstreamCompleted]))
  {
    os_unfair_lock_unlock(&v9->_lock);
  }

  else
  {
    [(BPSReduceProducer *)v9 setCompleted:1];
    v5 = [(BPSReduceProducer *)v9 result];
    os_unfair_lock_unlock(&v9->_lock);
    if (v5)
    {
      v6 = [(BPSReduceProducer *)v9 downstream];
      [v6 receiveInput:v5];
    }

    v7 = [(BPSReduceProducer *)v9 downstream];
    v8 = +[BPSCompletion success];
    [v7 receiveCompletion:v8];
  }
}

+ (id)safeMutableCopy:(id)a3
{
  v3 = a3;
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 mutableCopy];
  }

  else
  {
    v4 = v3;
  }

  v5 = v4;

  return v5;
}

- (id)upstreamSubscriptions
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = [(BPSReduceProducer *)self status];
  v4 = [v3 subscription];

  if (v4)
  {
    v5 = [(BPSReduceProducer *)self status];
    v6 = [v5 subscription];
    v10[0] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  }

  else
  {
    v5 = __biome_log_for_category();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(BPSReduceProducer *)self upstreamSubscriptions];
    }

    v7 = MEMORY[0x1E695E0F0];
  }

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)newBookmark
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = [(BPSReduceProducer *)self upstreamSubscriptions];
  v3 = [MEMORY[0x1E695E0F0] mutableCopy];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v21 + 1) + 8 * i);
        if ([v9 conformsToProtocol:&unk_1F4871E60])
        {
          v10 = [v9 newBookmark];
          if (v10)
          {
            goto LABEL_13;
          }
        }

        else
        {
          v11 = __biome_log_for_category();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v26 = v9;
            _os_log_error_impl(&dword_1C871B000, v11, OS_LOG_TYPE_ERROR, "Subscription %@ could not create bookmark", buf, 0xCu);
          }
        }

        v10 = [MEMORY[0x1E695DFB0] null];
LABEL_13:
        v12 = v10;
        [v3 addObject:v10];
      }

      v6 = [v4 countByEnumeratingWithState:&v21 objects:v27 count:16];
    }

    while (v6);
  }

  v13 = [BMBookmarkNode alloc];
  v14 = self->_result;
  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  v17 = [(BMBookmarkNode *)v13 initWithValue:v14 upstreams:v3 name:v16];

  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

- (void)receiveInput:(NSObject *)a3 .cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = 138412546;
  v7 = objc_opt_class();
  v8 = 2048;
  v9 = [a2 state];
  _os_log_fault_impl(&dword_1C871B000, a3, OS_LOG_TYPE_FAULT, "%@ - BPSResultState - %ld is unrecognized", &v6, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)requestDemand:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"BPSReduceProducer.m" lineNumber:226 description:@"Negative or zero demand requested"];
}

- (void)upstreamSubscriptions
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = 138412290;
  v5 = objc_opt_class();
  _os_log_error_impl(&dword_1C871B000, a2, OS_LOG_TYPE_ERROR, "%@ - Subscritpion shouldn't be nil while generating bookmark", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

@end