@interface BPSPassThroughSubject
- (BOOL)completed;
- (BPSPassThroughSubject)init;
- (id)bookmark;
- (id)nextEvent;
- (id)startWithSubscriber:(id)a3;
- (id)validateBookmark:(id)a3;
- (int64_t)receiveInput:(id)a3;
- (void)acknowledgeDownstreamDemand;
- (void)applyBookmark:(id)a3;
- (void)cancel;
- (void)dealloc;
- (void)disassociate:(int64_t)a3;
- (void)receiveCompletion:(id)a3;
- (void)reset;
- (void)sendCompletion;
- (void)sendCompletion:(id)a3;
- (void)sendEvent:(id)a3;
- (void)sendSubscription:(id)a3;
- (void)sendValue:(id)a3;
- (void)subscribe:(id)a3;
@end

@implementation BPSPassThroughSubject

- (BPSPassThroughSubject)init
{
  v12.receiver = self;
  v12.super_class = BPSPassThroughSubject;
  v2 = [(BPSPassThroughSubject *)&v12 init];
  if (v2)
  {
    v3 = objc_opt_new();
    upstreamSubscriptions = v2->_upstreamSubscriptions;
    v2->_upstreamSubscriptions = v3;

    completion = v2->_completion;
    v2->_completion = 0;

    v2->_active = 1;
    v6 = objc_opt_new();
    downstreams = v2->_downstreams;
    v2->_downstreams = v6;

    v2->_lock._os_unfair_lock_opaque = 0;
    subscriber = v2->_subscriber;
    v2->_subscriber = 0;

    v2->_complete = 0;
    v9 = objc_opt_new();
    nextEvents = v2->_nextEvents;
    v2->_nextEvents = v9;

    v2->_rlock = 0;
  }

  return v2;
}

- (void)dealloc
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_upstreamSubscriptions;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v10 + 1) + 8 * v7++) cancel];
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9.receiver = self;
  v9.super_class = BPSPassThroughSubject;
  [(BPSPassThroughSubject *)&v9 dealloc];
  v8 = *MEMORY[0x1E69E9840];
}

- (void)sendSubscription:(id)a3
{
  v5 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableArray *)self->_upstreamSubscriptions addObject:v5];
  v4 = [(BPSPassThroughSubject *)self hasAnyDownstreamDemand];
  os_unfair_lock_unlock(&self->_lock);
  if (v4)
  {
    [v5 requestDemand:0x7FFFFFFFFFFFFFFFLL];
  }
}

- (void)acknowledgeDownstreamDemand
{
  v16 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  if ([(BPSPassThroughSubject *)self hasAnyDownstreamDemand])
  {
    v3 = *MEMORY[0x1E69E9840];

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    [(BPSPassThroughSubject *)self setHasAnyDownstreamDemand:1];
    v4 = [(BPSPassThroughSubject *)self upstreamSubscriptions];
    os_unfair_lock_unlock(&self->_lock);
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v11 + 1) + 8 * i) requestDemand:{0x7FFFFFFFFFFFFFFFLL, v11}];
        }

        v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }

    v10 = *MEMORY[0x1E69E9840];
  }
}

- (void)subscribe:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  if ([(BPSPassThroughSubject *)self active])
  {
    v9 = [[_BPSInnerConduit alloc] initWithParent:self downstream:v4];
    v5 = [(BPSPassThroughSubject *)self downstreams];
    v6 = [v5 appendElement:v9];

    [(_BPSInnerConduit *)v9 assignIdentity:v6];
    os_unfair_lock_unlock(&self->_lock);
    [v4 receiveSubscription:v9];
  }

  else
  {
    v7 = [(BPSPassThroughSubject *)self completion];

    if (!v7)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Terminal will always be set when not active"];
    }

    os_unfair_lock_unlock(&self->_lock);
    v8 = objc_opt_new();
    [v4 receiveSubscription:v8];

    v9 = [(BPSPassThroughSubject *)self completion];
    [v4 receiveCompletion:?];
  }
}

- (void)sendValue:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self;
  os_unfair_lock_lock(&v5->_lock);
  if ([(BPSPassThroughSubject *)v5 active])
  {
    v6 = [(BPSPassThroughSubject *)v5 downstreams];
    v7 = [v6 items];

    os_unfair_lock_unlock(&v5->_lock);
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      do
      {
        v12 = 0;
        do
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [*(*(&v14 + 1) + 8 * v12++) offerInput:{v4, v14}];
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v10);
    }
  }

  else
  {
    os_unfair_lock_unlock(&v5->_lock);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)sendCompletion:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self;
  os_unfair_lock_lock(&v5->_lock);
  if ([(BPSPassThroughSubject *)v5 active])
  {
    [(BPSPassThroughSubject *)v5 setActive:0];
    [(BPSPassThroughSubject *)v5 setCompletion:v4];
    v6 = [(BPSPassThroughSubject *)v5 downstreams];
    v7 = [v6 claimAll];

    [(BPSPassThroughSubject *)v5 setUpstreamSubscriptions:0];
    os_unfair_lock_unlock(&v5->_lock);
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      do
      {
        v12 = 0;
        do
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [*(*(&v14 + 1) + 8 * v12++) finishWithCompletion:{v4, v14}];
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v10);
    }
  }

  else
  {
    os_unfair_lock_unlock(&v5->_lock);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)disassociate:(int64_t)a3
{
  os_unfair_lock_lock(&self->_lock);
  if ([(BPSPassThroughSubject *)self active])
  {
    v5 = [(BPSPassThroughSubject *)self downstreams];
    [v5 removeTicket:a3];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)receiveCompletion:(id)a3
{
  v4 = self;
  [(BPSPassThroughSubject *)v4 sendCompletion:a3];
}

- (int64_t)receiveInput:(id)a3
{
  v4 = self;
  [(BPSPassThroughSubject *)v4 sendValue:a3];

  return 0;
}

- (void)cancel
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = self;
  os_unfair_lock_lock(&v2->_lock);
  if ([(BPSPassThroughSubject *)v2 active])
  {
    [(BPSPassThroughSubject *)v2 setActive:0];
    v3 = [(BPSPassThroughSubject *)v2 upstreamSubscriptions];
    v4 = [v3 copy];

    [(BPSPassThroughSubject *)v2 setUpstreamSubscriptions:0];
    os_unfair_lock_unlock(&v2->_lock);
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v11 + 1) + 8 * v9++) cancel];
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }
  }

  else
  {
    os_unfair_lock_unlock(&v2->_lock);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (id)startWithSubscriber:(id)a3
{
  v4 = a3;
  os_unfair_recursive_lock_lock_with_options();
  [(BPSPassThroughSubject *)self setSubscriber:v4];

  os_unfair_recursive_lock_unlock();
  return 0;
}

- (id)nextEvent
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = [(BPSPassThroughSubject *)self nextEvents];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(BPSPassThroughSubject *)self nextEvents];
    v6 = [v5 objectAtIndex:0];

    v7 = [(BPSPassThroughSubject *)self nextEvents];
    [v7 removeObjectAtIndex:0];
  }

  else
  {
    v6 = 0;
  }

  os_unfair_recursive_lock_unlock();

  return v6;
}

- (BOOL)completed
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = 0;
  if ([(BPSPassThroughSubject *)self complete])
  {
    v4 = [(BPSPassThroughSubject *)self nextEvents];
    v3 = [v4 count] == 0;
  }

  os_unfair_recursive_lock_unlock();
  return v3;
}

- (void)reset
{
  os_unfair_recursive_lock_lock_with_options();
  [(BPSPassThroughSubject *)self setComplete:0];
  [(BPSPassThroughSubject *)self setSubscriber:0];
  v3 = [(BPSPassThroughSubject *)self nextEvents];
  [v3 removeAllObjects];

  os_unfair_recursive_lock_unlock();
}

- (id)bookmark
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = [(BPSPassThroughSubject *)self nextEvents];
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (id)validateBookmark:(id)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = 0;
  }

  else
  {
    v5 = objc_alloc(MEMORY[0x1E696AEC0]);
    v6 = objc_opt_class();
    v7 = [v5 initWithFormat:@"%@ expected bookmark of class %@, but received %@", v6, objc_opt_class(), v3];
    v8 = MEMORY[0x1E696ABC0];
    v12 = *MEMORY[0x1E696A578];
    v13[0] = v7;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v4 = [v8 errorWithDomain:@"BiomePubSubError" code:2 userInfo:v9];
  }

  v10 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)applyBookmark:(id)a3
{
  v4 = a3;
  os_unfair_recursive_lock_lock_with_options();
  [(BPSPassThroughSubject *)self setNextEvents:v4];

  os_unfair_recursive_lock_unlock();
}

- (void)sendCompletion
{
  os_unfair_recursive_lock_lock_with_options();
  [(BPSPassThroughSubject *)self setComplete:1];
  v3 = [(BPSPassThroughSubject *)self subscriber];
  [v3 requestNextEvents];

  os_unfair_recursive_lock_unlock();
}

- (void)sendEvent:(id)a3
{
  v4 = a3;
  os_unfair_recursive_lock_lock_with_options();
  v5 = [(BPSPassThroughSubject *)self nextEvents];
  [v5 addObject:v4];

  v6 = [(BPSPassThroughSubject *)self subscriber];
  [v6 requestNextEvents];

  os_unfair_recursive_lock_unlock();
}

@end