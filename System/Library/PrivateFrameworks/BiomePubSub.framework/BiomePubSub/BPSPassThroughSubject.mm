@interface BPSPassThroughSubject
- (BOOL)completed;
- (BPSPassThroughSubject)init;
- (id)bookmark;
- (id)nextEvent;
- (id)startWithSubscriber:(id)subscriber;
- (id)validateBookmark:(id)bookmark;
- (int64_t)receiveInput:(id)input;
- (void)acknowledgeDownstreamDemand;
- (void)applyBookmark:(id)bookmark;
- (void)cancel;
- (void)dealloc;
- (void)disassociate:(int64_t)disassociate;
- (void)receiveCompletion:(id)completion;
- (void)reset;
- (void)sendCompletion;
- (void)sendCompletion:(id)completion;
- (void)sendEvent:(id)event;
- (void)sendSubscription:(id)subscription;
- (void)sendValue:(id)value;
- (void)subscribe:(id)subscribe;
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

- (void)sendSubscription:(id)subscription
{
  subscriptionCopy = subscription;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableArray *)self->_upstreamSubscriptions addObject:subscriptionCopy];
  hasAnyDownstreamDemand = [(BPSPassThroughSubject *)self hasAnyDownstreamDemand];
  os_unfair_lock_unlock(&self->_lock);
  if (hasAnyDownstreamDemand)
  {
    [subscriptionCopy requestDemand:0x7FFFFFFFFFFFFFFFLL];
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
    upstreamSubscriptions = [(BPSPassThroughSubject *)self upstreamSubscriptions];
    os_unfair_lock_unlock(&self->_lock);
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = upstreamSubscriptions;
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

- (void)subscribe:(id)subscribe
{
  subscribeCopy = subscribe;
  os_unfair_lock_lock(&self->_lock);
  if ([(BPSPassThroughSubject *)self active])
  {
    completion2 = [[_BPSInnerConduit alloc] initWithParent:self downstream:subscribeCopy];
    downstreams = [(BPSPassThroughSubject *)self downstreams];
    v6 = [downstreams appendElement:completion2];

    [(_BPSInnerConduit *)completion2 assignIdentity:v6];
    os_unfair_lock_unlock(&self->_lock);
    [subscribeCopy receiveSubscription:completion2];
  }

  else
  {
    completion = [(BPSPassThroughSubject *)self completion];

    if (!completion)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Terminal will always be set when not active"];
    }

    os_unfair_lock_unlock(&self->_lock);
    v8 = objc_opt_new();
    [subscribeCopy receiveSubscription:v8];

    completion2 = [(BPSPassThroughSubject *)self completion];
    [subscribeCopy receiveCompletion:?];
  }
}

- (void)sendValue:(id)value
{
  v19 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  selfCopy = self;
  os_unfair_lock_lock(&selfCopy->_lock);
  if ([(BPSPassThroughSubject *)selfCopy active])
  {
    downstreams = [(BPSPassThroughSubject *)selfCopy downstreams];
    items = [downstreams items];

    os_unfair_lock_unlock(&selfCopy->_lock);
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = items;
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

          [*(*(&v14 + 1) + 8 * v12++) offerInput:{valueCopy, v14}];
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v10);
    }
  }

  else
  {
    os_unfair_lock_unlock(&selfCopy->_lock);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)sendCompletion:(id)completion
{
  v19 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  selfCopy = self;
  os_unfair_lock_lock(&selfCopy->_lock);
  if ([(BPSPassThroughSubject *)selfCopy active])
  {
    [(BPSPassThroughSubject *)selfCopy setActive:0];
    [(BPSPassThroughSubject *)selfCopy setCompletion:completionCopy];
    downstreams = [(BPSPassThroughSubject *)selfCopy downstreams];
    claimAll = [downstreams claimAll];

    [(BPSPassThroughSubject *)selfCopy setUpstreamSubscriptions:0];
    os_unfair_lock_unlock(&selfCopy->_lock);
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = claimAll;
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

          [*(*(&v14 + 1) + 8 * v12++) finishWithCompletion:{completionCopy, v14}];
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v10);
    }
  }

  else
  {
    os_unfair_lock_unlock(&selfCopy->_lock);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)disassociate:(int64_t)disassociate
{
  os_unfair_lock_lock(&self->_lock);
  if ([(BPSPassThroughSubject *)self active])
  {
    downstreams = [(BPSPassThroughSubject *)self downstreams];
    [downstreams removeTicket:disassociate];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)receiveCompletion:(id)completion
{
  selfCopy = self;
  [(BPSPassThroughSubject *)selfCopy sendCompletion:completion];
}

- (int64_t)receiveInput:(id)input
{
  selfCopy = self;
  [(BPSPassThroughSubject *)selfCopy sendValue:input];

  return 0;
}

- (void)cancel
{
  v16 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  os_unfair_lock_lock(&selfCopy->_lock);
  if ([(BPSPassThroughSubject *)selfCopy active])
  {
    [(BPSPassThroughSubject *)selfCopy setActive:0];
    upstreamSubscriptions = [(BPSPassThroughSubject *)selfCopy upstreamSubscriptions];
    v4 = [upstreamSubscriptions copy];

    [(BPSPassThroughSubject *)selfCopy setUpstreamSubscriptions:0];
    os_unfair_lock_unlock(&selfCopy->_lock);
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
    os_unfair_lock_unlock(&selfCopy->_lock);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (id)startWithSubscriber:(id)subscriber
{
  subscriberCopy = subscriber;
  os_unfair_recursive_lock_lock_with_options();
  [(BPSPassThroughSubject *)self setSubscriber:subscriberCopy];

  os_unfair_recursive_lock_unlock();
  return 0;
}

- (id)nextEvent
{
  os_unfair_recursive_lock_lock_with_options();
  nextEvents = [(BPSPassThroughSubject *)self nextEvents];
  v4 = [nextEvents count];

  if (v4)
  {
    nextEvents2 = [(BPSPassThroughSubject *)self nextEvents];
    v6 = [nextEvents2 objectAtIndex:0];

    nextEvents3 = [(BPSPassThroughSubject *)self nextEvents];
    [nextEvents3 removeObjectAtIndex:0];
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
    nextEvents = [(BPSPassThroughSubject *)self nextEvents];
    v3 = [nextEvents count] == 0;
  }

  os_unfair_recursive_lock_unlock();
  return v3;
}

- (void)reset
{
  os_unfair_recursive_lock_lock_with_options();
  [(BPSPassThroughSubject *)self setComplete:0];
  [(BPSPassThroughSubject *)self setSubscriber:0];
  nextEvents = [(BPSPassThroughSubject *)self nextEvents];
  [nextEvents removeAllObjects];

  os_unfair_recursive_lock_unlock();
}

- (id)bookmark
{
  os_unfair_recursive_lock_lock_with_options();
  nextEvents = [(BPSPassThroughSubject *)self nextEvents];
  os_unfair_recursive_lock_unlock();

  return nextEvents;
}

- (id)validateBookmark:(id)bookmark
{
  v13[1] = *MEMORY[0x1E69E9840];
  bookmarkCopy = bookmark;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = 0;
  }

  else
  {
    v5 = objc_alloc(MEMORY[0x1E696AEC0]);
    v6 = objc_opt_class();
    bookmarkCopy = [v5 initWithFormat:@"%@ expected bookmark of class %@, but received %@", v6, objc_opt_class(), bookmarkCopy];
    v8 = MEMORY[0x1E696ABC0];
    v12 = *MEMORY[0x1E696A578];
    v13[0] = bookmarkCopy;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v4 = [v8 errorWithDomain:@"BiomePubSubError" code:2 userInfo:v9];
  }

  v10 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)applyBookmark:(id)bookmark
{
  bookmarkCopy = bookmark;
  os_unfair_recursive_lock_lock_with_options();
  [(BPSPassThroughSubject *)self setNextEvents:bookmarkCopy];

  os_unfair_recursive_lock_unlock();
}

- (void)sendCompletion
{
  os_unfair_recursive_lock_lock_with_options();
  [(BPSPassThroughSubject *)self setComplete:1];
  subscriber = [(BPSPassThroughSubject *)self subscriber];
  [subscriber requestNextEvents];

  os_unfair_recursive_lock_unlock();
}

- (void)sendEvent:(id)event
{
  eventCopy = event;
  os_unfair_recursive_lock_lock_with_options();
  nextEvents = [(BPSPassThroughSubject *)self nextEvents];
  [nextEvents addObject:eventCopy];

  subscriber = [(BPSPassThroughSubject *)self subscriber];
  [subscriber requestNextEvents];

  os_unfair_recursive_lock_unlock();
}

@end