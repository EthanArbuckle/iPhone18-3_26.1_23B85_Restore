@interface BPSReduceProducer
+ (id)safeMutableCopy:(id)copy;
- (BPSReduceProducer)initWithDownstream:(id)downstream initial:(id)initial reduce:(id)reduce;
- (id)newBookmark;
- (id)receiveNewValue:(id)value;
- (id)upstreamSubscriptions;
- (int64_t)receiveInput:(id)input;
- (void)cancel;
- (void)receiveCompletion:(id)completion;
- (void)receiveSubscription:(id)subscription;
- (void)requestDemand:(int64_t)demand;
- (void)upstreamSubscriptions;
@end

@implementation BPSReduceProducer

- (BPSReduceProducer)initWithDownstream:(id)downstream initial:(id)initial reduce:(id)reduce
{
  downstreamCopy = downstream;
  initialCopy = initial;
  reduceCopy = reduce;
  v23.receiver = self;
  v23.super_class = BPSReduceProducer;
  v12 = [(BPSReduceProducer *)&v23 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_downstream, downstream);
    v14 = [BPSReduceProducer safeMutableCopy:initialCopy];
    v15 = v13->_result;
    v13->_result = v14;

    v16 = [BPSReduceProducer safeMutableCopy:initialCopy];
    initial = v13->_initial;
    v13->_initial = v16;

    v18 = _Block_copy(reduceCopy);
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

- (id)receiveNewValue:(id)value
{
  valueCopy = value;
  v5 = MEMORY[0x1E696AEC0];
  v6 = NSStringFromSelector(a2);
  v7 = [v5 stringWithFormat:@"Override %@ in a subclass", v6];

  v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v7 userInfo:0];
  objc_exception_throw(v8);
}

- (void)receiveCompletion:(id)completion
{
  v21 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  selfCopy = self;
  v6 = __biome_log_for_category();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v19 = 138412290;
    v20 = objc_opt_class();
    _os_log_impl(&dword_1C871B000, v6, OS_LOG_TYPE_INFO, "%@ - completion", &v19, 0xCu);
  }

  os_unfair_lock_lock(&selfCopy->_lock);
  status = [(BPSReduceProducer *)selfCopy status];
  state = [status state];

  if (state != 1)
  {
LABEL_15:
    os_unfair_lock_unlock(&selfCopy->_lock);
    goto LABEL_16;
  }

  status2 = [(BPSReduceProducer *)selfCopy status];
  [status2 setState:2];

  state2 = [completionCopy state];
  if (state2 == 1)
  {
    if (![(BPSReduceProducer *)selfCopy cancelled]&& ![(BPSReduceProducer *)selfCopy completed]&& ![(BPSReduceProducer *)selfCopy upstreamCompleted])
    {
      [(BPSReduceProducer *)selfCopy setUpstreamCompleted:1];
      [(BPSReduceProducer *)selfCopy setCompleted:1];
      os_unfair_lock_unlock(&selfCopy->_lock);
      error = [completionCopy error];
      downstream = [(BPSReduceProducer *)selfCopy downstream];
      v15 = [BPSCompletion failureWithError:error];
      goto LABEL_23;
    }

    goto LABEL_15;
  }

  if (!state2)
  {
    if (![(BPSReduceProducer *)selfCopy cancelled]&& ![(BPSReduceProducer *)selfCopy completed]&& ![(BPSReduceProducer *)selfCopy upstreamCompleted])
    {
      [(BPSReduceProducer *)selfCopy setUpstreamCompleted:1];
      if ([(BPSReduceProducer *)selfCopy downstreamRequested]|| [(BPSReduceProducer *)selfCopy empty])
      {
        v11 = 1;
        [(BPSReduceProducer *)selfCopy setCompleted:1];
      }

      else
      {
        v11 = 0;
      }

      error = [(BPSReduceProducer *)selfCopy result];
      os_unfair_lock_unlock(&selfCopy->_lock);
      if (!v11)
      {
        goto LABEL_24;
      }

      if (error)
      {
        downstream2 = [(BPSReduceProducer *)selfCopy downstream];
        [downstream2 receiveInput:error];
      }

      downstream = [(BPSReduceProducer *)selfCopy downstream];
      v15 = +[BPSCompletion success];
LABEL_23:
      v17 = v15;
      [downstream receiveCompletion:v15];

LABEL_24:
      os_unfair_lock_lock(&selfCopy->_lock);
      status3 = [(BPSReduceProducer *)selfCopy status];
      [status3 setSubscription:0];

      os_unfair_lock_unlock(&selfCopy->_lock);
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_16:

  v12 = *MEMORY[0x1E69E9840];
}

- (int64_t)receiveInput:(id)input
{
  inputCopy = input;
  selfCopy = self;
  os_unfair_lock_lock(&selfCopy->_lock);
  status = [(BPSReduceProducer *)selfCopy status];
  state = [status state];

  if (state == 1)
  {
    [(BPSReduceProducer *)selfCopy setEmpty:0];
    os_unfair_lock_unlock(&selfCopy->_lock);
    v8 = [(BPSReduceProducer *)selfCopy receiveNewValue:inputCopy];
    state2 = [v8 state];
    switch(state2)
    {
      case 0:
        os_unfair_lock_lock(&selfCopy->_lock);
        [(BPSReduceProducer *)selfCopy setUpstreamCompleted:1];
        downstreamRequested = [(BPSReduceProducer *)selfCopy downstreamRequested];
        if (downstreamRequested)
        {
          [(BPSReduceProducer *)selfCopy setCompleted:1];
        }

        status2 = [(BPSReduceProducer *)selfCopy status];
        [status2 setState:2];

        result = [(BPSReduceProducer *)selfCopy result];
        os_unfair_lock_unlock(&selfCopy->_lock);
        status3 = [(BPSReduceProducer *)selfCopy status];
        subscription = [status3 subscription];
        [subscription cancel];

        if (downstreamRequested)
        {
          if (result)
          {
            downstream = [(BPSReduceProducer *)selfCopy downstream];
            [downstream receiveInput:result];
          }

          downstream2 = [(BPSReduceProducer *)selfCopy downstream];
          v25 = +[BPSCompletion success];
          [downstream2 receiveCompletion:v25];
        }

        v11 = 0;

        goto LABEL_18;
      case 2:
        os_unfair_lock_lock(&selfCopy->_lock);
        [(BPSReduceProducer *)selfCopy setUpstreamCompleted:1];
        [(BPSReduceProducer *)selfCopy setCompleted:1];
        os_unfair_lock_unlock(&selfCopy->_lock);
        status4 = [(BPSReduceProducer *)selfCopy status];
        [status4 setState:2];

        status5 = [(BPSReduceProducer *)selfCopy status];
        subscription2 = [status5 subscription];
        [subscription2 cancel];

        downstream3 = [(BPSReduceProducer *)selfCopy downstream];
        error = [v8 error];
        v17 = [BPSCompletion failureWithError:error];
        [downstream3 receiveCompletion:v17];

        break;
      case 1:
        break;
      default:
        v10 = __biome_log_for_category();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
        {
          [(BPSReduceProducer *)selfCopy receiveInput:v8, v10];
        }

        v11 = 1;
        goto LABEL_18;
    }

    v11 = 0;
LABEL_18:

    goto LABEL_19;
  }

  os_unfair_lock_unlock(&selfCopy->_lock);
  v11 = 0;
LABEL_19:

  return v11;
}

- (void)receiveSubscription:(id)subscription
{
  subscriptionCopy = subscription;
  os_unfair_lock_lock(&self->_lock);
  status = [(BPSReduceProducer *)self status];
  state = [status state];

  if (state)
  {
    os_unfair_lock_unlock(&self->_lock);
    status2 = [(BPSReduceProducer *)self status];
    subscription = [status2 subscription];
    [subscription cancel];
  }

  else
  {
    status3 = [(BPSReduceProducer *)self status];
    [status3 setState:1];

    status4 = [(BPSReduceProducer *)self status];
    [status4 setSubscription:subscriptionCopy];

    os_unfair_lock_unlock(&self->_lock);
    downstream = [(BPSReduceProducer *)self downstream];
    [downstream receiveSubscription:self];

    [subscriptionCopy requestDemand:0x7FFFFFFFFFFFFFFFLL];
  }
}

- (void)cancel
{
  selfCopy = self;
  v3 = __biome_log_for_category();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(_BPSHandleEventsInner *)selfCopy cancel];
  }

  os_unfair_lock_lock(&selfCopy->_lock);
  status = [(BPSReduceProducer *)selfCopy status];
  state = [status state];

  if (state == 1)
  {
    [(BPSReduceProducer *)selfCopy setCancelled:1];
    status2 = [(BPSReduceProducer *)selfCopy status];
    [status2 setState:2];

    os_unfair_lock_unlock(&selfCopy->_lock);
    status3 = [(BPSReduceProducer *)selfCopy status];
    subscription = [status3 subscription];
    [subscription cancel];

    os_unfair_lock_lock(&selfCopy->_lock);
    status4 = [(BPSReduceProducer *)selfCopy status];
    [status4 setSubscription:0];
  }

  os_unfair_lock_unlock(&selfCopy->_lock);
}

- (void)requestDemand:(int64_t)demand
{
  selfCopy = self;
  if (demand <= 0)
  {
    [(BPSReduceProducer *)a2 requestDemand:selfCopy];
  }

  os_unfair_lock_lock(&selfCopy->_lock);
  if ([(BPSReduceProducer *)selfCopy downstreamRequested]|| [(BPSReduceProducer *)selfCopy cancelled]|| [(BPSReduceProducer *)selfCopy completed]|| ([(BPSReduceProducer *)selfCopy setDownstreamRequested:1], ![(BPSReduceProducer *)selfCopy upstreamCompleted]))
  {
    os_unfair_lock_unlock(&selfCopy->_lock);
  }

  else
  {
    [(BPSReduceProducer *)selfCopy setCompleted:1];
    result = [(BPSReduceProducer *)selfCopy result];
    os_unfair_lock_unlock(&selfCopy->_lock);
    if (result)
    {
      downstream = [(BPSReduceProducer *)selfCopy downstream];
      [downstream receiveInput:result];
    }

    downstream2 = [(BPSReduceProducer *)selfCopy downstream];
    v8 = +[BPSCompletion success];
    [downstream2 receiveCompletion:v8];
  }
}

+ (id)safeMutableCopy:(id)copy
{
  copyCopy = copy;
  if (objc_opt_respondsToSelector())
  {
    v4 = [copyCopy mutableCopy];
  }

  else
  {
    v4 = copyCopy;
  }

  v5 = v4;

  return v5;
}

- (id)upstreamSubscriptions
{
  v10[1] = *MEMORY[0x1E69E9840];
  status = [(BPSReduceProducer *)self status];
  subscription = [status subscription];

  if (subscription)
  {
    status2 = [(BPSReduceProducer *)self status];
    subscription2 = [status2 subscription];
    v10[0] = subscription2;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  }

  else
  {
    status2 = __biome_log_for_category();
    if (os_log_type_enabled(status2, OS_LOG_TYPE_ERROR))
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
  upstreamSubscriptions = [(BPSReduceProducer *)self upstreamSubscriptions];
  v3 = [MEMORY[0x1E695E0F0] mutableCopy];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = upstreamSubscriptions;
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
          newBookmark = [v9 newBookmark];
          if (newBookmark)
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

        newBookmark = [MEMORY[0x1E695DFB0] null];
LABEL_13:
        v12 = newBookmark;
        [v3 addObject:newBookmark];
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