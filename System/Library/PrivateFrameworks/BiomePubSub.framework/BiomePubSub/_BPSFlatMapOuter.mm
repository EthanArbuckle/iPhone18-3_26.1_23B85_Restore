@interface _BPSFlatMapOuter
- (_BPSFlatMapOuter)initWithDownstream:(id)downstream maxPublishers:(int64_t)publishers map:(id)map;
- (id)newBookmark;
- (id)upstreamSubscriptions;
- (int64_t)receiveInnerInput:(id)input index:(int64_t)index;
- (int64_t)receiveInput:(id)input;
- (void)_updateBookmarkWhenLocked;
- (void)cancel;
- (void)receiveCompletion:(id)completion;
- (void)receiveInnerCompletion:(id)completion index:(int64_t)index;
- (void)receiveInnerSubscription:(id)subscription index:(int64_t)index;
- (void)receiveSubscription:(id)subscription;
- (void)requestDemand:(int64_t)demand;
@end

@implementation _BPSFlatMapOuter

- (_BPSFlatMapOuter)initWithDownstream:(id)downstream maxPublishers:(int64_t)publishers map:(id)map
{
  downstreamCopy = downstream;
  mapCopy = map;
  v22.receiver = self;
  v22.super_class = _BPSFlatMapOuter;
  v11 = [(_BPSFlatMapOuter *)&v22 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_downstream, downstream);
    null = [MEMORY[0x1E695DFB0] null];
    outerBookmark = v12->_outerBookmark;
    v12->_outerBookmark = null;

    v15 = objc_opt_new();
    subscriptions = v12->_subscriptions;
    v12->_subscriptions = v15;

    v12->_maxPublishers = publishers;
    v17 = [mapCopy copy];
    map = v12->_map;
    v12->_map = v17;

    v19 = [MEMORY[0x1E695E0F0] mutableCopy];
    buffer = v12->_buffer;
    v12->_buffer = v19;

    v12->_lock._os_unfair_lock_opaque = 0;
    v12->_outerLock._os_unfair_lock_opaque = 0;
    v12->_downstreamLock = 0;
  }

  return v12;
}

- (void)receiveSubscription:(id)subscription
{
  subscriptionCopy = subscription;
  os_unfair_lock_lock(&self->_lock);
  outerSubscription = [(_BPSFlatMapOuter *)self outerSubscription];
  if (outerSubscription)
  {

LABEL_4:
    os_unfair_lock_unlock(&self->_lock);
    [subscriptionCopy cancel];
    goto LABEL_5;
  }

  if ([(_BPSFlatMapOuter *)self cancelledOrCompleted])
  {
    goto LABEL_4;
  }

  os_unfair_lock_unlock(&self->_lock);
  [(_BPSFlatMapOuter *)self setOuterSubscription:subscriptionCopy];
  [subscriptionCopy requestDemand:{-[_BPSFlatMapOuter maxPublishers](self, "maxPublishers")}];
LABEL_5:
}

- (int64_t)receiveInput:(id)input
{
  inputCopy = input;
  selfCopy = self;
  os_unfair_lock_lock(&selfCopy->_lock);
  cancelledOrCompleted = [(_BPSFlatMapOuter *)selfCopy cancelledOrCompleted];
  os_unfair_lock_unlock(&selfCopy->_lock);
  if (!cancelledOrCompleted)
  {
    v7 = [(_BPSFlatMapOuter *)selfCopy map];
    v8 = (v7)[2](v7, inputCopy);

    nextInnerIndex = [(_BPSFlatMapOuter *)selfCopy nextInnerIndex];
    [(_BPSFlatMapOuter *)selfCopy setNextInnerIndex:[(_BPSFlatMapOuter *)selfCopy nextInnerIndex]+ 1];
    os_unfair_lock_lock(&selfCopy->_lock);
    [(_BPSFlatMapOuter *)selfCopy setPendingSubscriptions:[(_BPSFlatMapOuter *)selfCopy pendingSubscriptions]+ 1];
    os_unfair_lock_unlock(&selfCopy->_lock);
    v10 = [[_BPSFlatMapSide alloc] initWithIndex:nextInnerIndex outer:selfCopy];
    [v8 subscribe:v10];
  }

  return 0;
}

- (void)receiveCompletion:(id)completion
{
  v34 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  selfCopy = self;
  os_unfair_lock_lock(&selfCopy->_lock);
  [(_BPSFlatMapOuter *)selfCopy setOuterFinished:1];
  [(_BPSFlatMapOuter *)selfCopy _updateBookmarkWhenLocked];
  [(_BPSFlatMapOuter *)selfCopy setOuterSubscription:0];
  state = [completionCopy state];
  if (state == 1)
  {
    cancelledOrCompleted = [(_BPSFlatMapOuter *)selfCopy cancelledOrCompleted];
    [(_BPSFlatMapOuter *)selfCopy setCancelledOrCompleted:1];
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    subscriptions = [(_BPSFlatMapOuter *)selfCopy subscriptions];
    v12 = [subscriptions countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v30;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v30 != v14)
          {
            objc_enumerationMutation(subscriptions);
          }

          v16 = *(*(&v29 + 1) + 8 * i);
          subscriptions2 = [(_BPSFlatMapOuter *)selfCopy subscriptions];
          v18 = [subscriptions2 objectForKeyedSubscript:v16];

          [v18 cancel];
        }

        v13 = [subscriptions countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v13);
    }

    v19 = [MEMORY[0x1E695E0F8] mutableCopy];
    [(_BPSFlatMapOuter *)selfCopy setSubscriptions:v19];

    os_unfair_lock_unlock(&selfCopy->_lock);
    if (!cancelledOrCompleted)
    {
      os_unfair_recursive_lock_lock_with_options();
      downstream = [(_BPSFlatMapOuter *)selfCopy downstream];
      error = [completionCopy error];
      v22 = [BPSCompletion failureWithError:error];
      [downstream receiveCompletion:v22];

LABEL_19:
      os_unfair_recursive_lock_unlock();
    }
  }

  else if (!state)
  {
    buffer = [(_BPSFlatMapOuter *)selfCopy buffer];
    if (buffer)
    {
      buffer2 = [(_BPSFlatMapOuter *)selfCopy buffer];
      v9 = [buffer2 count] != 0;
    }

    else
    {
      v9 = 0;
    }

    if (-[_BPSFlatMapOuter cancelledOrCompleted](selfCopy, "cancelledOrCompleted") || v9 || (-[_BPSFlatMapOuter subscriptions](selfCopy, "subscriptions"), v23 = objc_claimAutoreleasedReturnValue(), v24 = [v23 count], v25 = -[_BPSFlatMapOuter pendingSubscriptions](selfCopy, "pendingSubscriptions"), v23, v24 + v25))
    {
      os_unfair_lock_unlock(&selfCopy->_lock);
      goto LABEL_21;
    }

    [(_BPSFlatMapOuter *)selfCopy setCancelledOrCompleted:1];
    os_unfair_lock_unlock(&selfCopy->_lock);
    os_unfair_recursive_lock_lock_with_options();
    downstream2 = [(_BPSFlatMapOuter *)selfCopy downstream];
    v27 = +[BPSCompletion success];
    [downstream2 receiveCompletion:v27];

    goto LABEL_19;
  }

LABEL_21:

  v28 = *MEMORY[0x1E69E9840];
}

- (void)requestDemand:(int64_t)demand
{
  v59 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  if (demand <= 0)
  {
    [(_BPSFlatMapOuter *)a2 requestDemand:selfCopy];
  }

  if ([(_BPSFlatMapOuter *)selfCopy downstreamRecursive])
  {
    [(_BPSFlatMapOuter *)selfCopy setDownstreamDemand:[(_BPSFlatMapOuter *)selfCopy downstreamDemand]+ demand];
  }

  else
  {
    os_unfair_lock_lock(&selfCopy->_lock);
    if ([(_BPSFlatMapOuter *)selfCopy cancelledOrCompleted])
    {
      goto LABEL_40;
    }

    if (demand == 0x7FFFFFFFFFFFFFFFLL)
    {
      [(_BPSFlatMapOuter *)selfCopy setDownstreamDemand:0x7FFFFFFFFFFFFFFFLL];
      buffer = [(_BPSFlatMapOuter *)selfCopy buffer];
      v7 = [MEMORY[0x1E695E0F0] mutableCopy];
      [(_BPSFlatMapOuter *)selfCopy setBuffer:v7];

      subscriptions = [(_BPSFlatMapOuter *)selfCopy subscriptions];
      os_unfair_lock_unlock(&selfCopy->_lock);
      os_unfair_recursive_lock_lock_with_options();
      [(_BPSFlatMapOuter *)selfCopy setDownstreamRecursive:1];
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v8 = buffer;
      v9 = [v8 countByEnumeratingWithState:&v53 objects:v58 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v54;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v54 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v53 + 1) + 8 * i);
            downstream = [(_BPSFlatMapOuter *)selfCopy downstream];
            second = [v13 second];
            [downstream receiveInput:second];
          }

          v10 = [v8 countByEnumeratingWithState:&v53 objects:v58 count:16];
        }

        while (v10);
      }

      [(_BPSFlatMapOuter *)selfCopy setDownstreamRecursive:0];
      os_unfair_recursive_lock_unlock();
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v16 = subscriptions;
      v17 = [v16 countByEnumeratingWithState:&v49 objects:v57 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v50;
        do
        {
          for (j = 0; j != v18; ++j)
          {
            if (*v50 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = [v16 objectForKeyedSubscript:*(*(&v49 + 1) + 8 * j)];
            [v21 requestDemand:0x7FFFFFFFFFFFFFFFLL];
          }

          v18 = [v16 countByEnumeratingWithState:&v49 objects:v57 count:16];
        }

        while (v18);
      }

      os_unfair_lock_lock(&selfCopy->_lock);
    }

    else
    {
      [(_BPSFlatMapOuter *)selfCopy setDownstreamDemand:[(_BPSFlatMapOuter *)selfCopy downstreamDemand]+ demand];
      buffer2 = [(_BPSFlatMapOuter *)selfCopy buffer];
      if (buffer2)
      {
        v23 = buffer2;
        buffer3 = [(_BPSFlatMapOuter *)selfCopy buffer];
        v25 = [buffer3 count];

        if (v25)
        {
          while ([(_BPSFlatMapOuter *)selfCopy downstreamDemand]>= 1)
          {
            buffer4 = [(_BPSFlatMapOuter *)selfCopy buffer];
            firstObject = [buffer4 firstObject];

            buffer5 = [(_BPSFlatMapOuter *)selfCopy buffer];
            [buffer5 removeObjectAtIndex:0];

            [(_BPSFlatMapOuter *)selfCopy setDownstreamDemand:[(_BPSFlatMapOuter *)selfCopy downstreamDemand]- 1];
            subscriptions2 = [(_BPSFlatMapOuter *)selfCopy subscriptions];
            first = [firstObject first];
            v31 = [subscriptions2 objectForKeyedSubscript:first];

            os_unfair_lock_unlock(&selfCopy->_lock);
            os_unfair_recursive_lock_lock_with_options();
            [(_BPSFlatMapOuter *)selfCopy setDownstreamRecursive:1];
            downstream2 = [(_BPSFlatMapOuter *)selfCopy downstream];
            second2 = [firstObject second];
            v34 = [downstream2 receiveInput:second2];

            [(_BPSFlatMapOuter *)selfCopy setDownstreamRecursive:0];
            os_unfair_recursive_lock_unlock();
            if (v34 >= 1)
            {
              os_unfair_lock_lock(&selfCopy->_lock);
              [(_BPSFlatMapOuter *)selfCopy setDownstreamDemand:[(_BPSFlatMapOuter *)selfCopy downstreamDemand]+ v34];
              os_unfair_lock_unlock(&selfCopy->_lock);
            }

            if (v31)
            {
              [(_BPSFlatMapOuter *)selfCopy setInnerRecursive:1];
              [v31 requestDemand:1];
              [(_BPSFlatMapOuter *)selfCopy setInnerRecursive:0];
            }

            os_unfair_lock_lock(&selfCopy->_lock);
            buffer6 = [(_BPSFlatMapOuter *)selfCopy buffer];
            if (!buffer6)
            {

              break;
            }

            v36 = buffer6;
            buffer7 = [(_BPSFlatMapOuter *)selfCopy buffer];
            v38 = [buffer7 count];

            if (!v38)
            {
              break;
            }
          }
        }
      }
    }

    buffer8 = [(_BPSFlatMapOuter *)selfCopy buffer];
    if (buffer8)
    {
      buffer9 = [(_BPSFlatMapOuter *)selfCopy buffer];
      v41 = [buffer9 count] != 0;
    }

    else
    {
      v41 = 0;
    }

    if (-[_BPSFlatMapOuter cancelledOrCompleted](selfCopy, "cancelledOrCompleted") || v41 | !-[_BPSFlatMapOuter outerFinished](selfCopy, "outerFinished") || (-[_BPSFlatMapOuter subscriptions](selfCopy, "subscriptions"), v42 = objc_claimAutoreleasedReturnValue(), v43 = [v42 count], v44 = -[_BPSFlatMapOuter pendingSubscriptions](selfCopy, "pendingSubscriptions"), v42, v43 + v44))
    {
LABEL_40:
      os_unfair_lock_unlock(&selfCopy->_lock);
    }

    else
    {
      [(_BPSFlatMapOuter *)selfCopy setCancelledOrCompleted:1];
      os_unfair_lock_unlock(&selfCopy->_lock);
      os_unfair_recursive_lock_lock_with_options();
      downstream3 = [(_BPSFlatMapOuter *)selfCopy downstream];
      v46 = +[BPSCompletion success];
      [downstream3 receiveCompletion:v46];

      os_unfair_recursive_lock_unlock();
    }
  }

  v47 = *MEMORY[0x1E69E9840];
}

- (void)cancel
{
  v18 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  os_unfair_lock_lock(&selfCopy->_lock);
  [(_BPSFlatMapOuter *)selfCopy setCancelledOrCompleted:1];
  subscriptions = [(_BPSFlatMapOuter *)selfCopy subscriptions];
  v4 = [MEMORY[0x1E695E0F8] mutableCopy];
  [(_BPSFlatMapOuter *)selfCopy setSubscriptions:v4];

  outerSubscription = [(_BPSFlatMapOuter *)selfCopy outerSubscription];
  [(_BPSFlatMapOuter *)selfCopy _updateBookmarkWhenLocked];
  [(_BPSFlatMapOuter *)selfCopy setOuterSubscription:0];
  os_unfair_lock_unlock(&selfCopy->_lock);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = subscriptions;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [v6 objectForKeyedSubscript:{*(*(&v13 + 1) + 8 * v10), v13}];
        [v11 cancel];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  [outerSubscription cancel];
  v12 = *MEMORY[0x1E69E9840];
}

- (id)upstreamSubscriptions
{
  v8[1] = *MEMORY[0x1E69E9840];
  outerSubscription = [(_BPSFlatMapOuter *)self outerSubscription];
  if (outerSubscription)
  {
    outerSubscription2 = [(_BPSFlatMapOuter *)self outerSubscription];
    v8[0] = outerSubscription2;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)_updateBookmarkWhenLocked
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = objc_opt_class();
  OUTLINED_FUNCTION_0_2(&dword_1C871B000, v1, v2, "%@ - upstream bookmark shouldn't be nil", v3, v4, v5, v6, 2u);

  v7 = *MEMORY[0x1E69E9840];
}

- (id)newBookmark
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = [BMBookmarkNode alloc];
  v11[0] = self->_outerBookmark;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  outerSubscription = [(_BPSFlatMapOuter *)self outerSubscription];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [(BMBookmarkNode *)v3 initWithValue:0 upstreams:v4 name:v7];

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

- (void)receiveInnerSubscription:(id)subscription index:(int64_t)index
{
  subscriptionCopy = subscription;
  os_unfair_lock_lock(&self->_lock);
  [(_BPSFlatMapOuter *)self setPendingSubscriptions:[(_BPSFlatMapOuter *)self pendingSubscriptions]- 1];
  subscriptions = [(_BPSFlatMapOuter *)self subscriptions];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:index];
  [subscriptions setObject:subscriptionCopy forKeyedSubscript:v7];

  if ([(_BPSFlatMapOuter *)self downstreamDemand]== 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = 1;
  }

  os_unfair_lock_unlock(&self->_lock);
  [subscriptionCopy requestDemand:v8];
}

- (int64_t)receiveInnerInput:(id)input index:(int64_t)index
{
  inputCopy = input;
  os_unfair_lock_lock(&self->_lock);
  if ([(_BPSFlatMapOuter *)self downstreamDemand]== 0x7FFFFFFFFFFFFFFFLL)
  {
    os_unfair_lock_unlock(&self->_lock);
    os_unfair_recursive_lock_lock_with_options();
    [(_BPSFlatMapOuter *)self setDownstreamRecursive:1];
    downstream = [(_BPSFlatMapOuter *)self downstream];
    [downstream receiveInput:inputCopy];

    [(_BPSFlatMapOuter *)self setDownstreamRecursive:0];
    os_unfair_recursive_lock_unlock();
LABEL_6:
    v12 = 0;
    goto LABEL_7;
  }

  if ([(_BPSFlatMapOuter *)self downstreamDemand]< 1 || [(_BPSFlatMapOuter *)self innerRecursive])
  {
    buffer = [(_BPSFlatMapOuter *)self buffer];
    v9 = [BPSTuple alloc];
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:index];
    v11 = [(BPSTuple *)v9 initWithFirst:v10 second:inputCopy];
    [buffer addObject:v11];

    os_unfair_lock_unlock(&self->_lock);
    goto LABEL_6;
  }

  [(_BPSFlatMapOuter *)self setDownstreamDemand:[(_BPSFlatMapOuter *)self downstreamDemand]- 1];
  os_unfair_lock_unlock(&self->_lock);
  os_unfair_recursive_lock_lock_with_options();
  v12 = 1;
  [(_BPSFlatMapOuter *)self setDownstreamRecursive:1];
  downstream2 = [(_BPSFlatMapOuter *)self downstream];
  v15 = [downstream2 receiveInput:inputCopy];

  [(_BPSFlatMapOuter *)self setDownstreamRecursive:0];
  os_unfair_recursive_lock_unlock();
  if (v15 >= 1)
  {
    os_unfair_lock_lock(&self->_lock);
    [(_BPSFlatMapOuter *)self setDownstreamDemand:[(_BPSFlatMapOuter *)self downstreamDemand]+ v15];
    os_unfair_lock_unlock(&self->_lock);
    v12 = 1;
  }

LABEL_7:

  return v12;
}

- (void)receiveInnerCompletion:(id)completion index:(int64_t)index
{
  v42 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  state = [completionCopy state];
  if (state == 1)
  {
    v13 = 12;
    os_unfair_lock_lock(&self->_lock);
    if ([(_BPSFlatMapOuter *)self cancelledOrCompleted])
    {
      goto LABEL_24;
    }

    v36 = completionCopy;
    [(_BPSFlatMapOuter *)self setCancelledOrCompleted:1];
    subscriptions = [(_BPSFlatMapOuter *)self subscriptions];
    v15 = [MEMORY[0x1E695E0F8] mutableCopy];
    [(_BPSFlatMapOuter *)self setSubscriptions:v15];

    os_unfair_lock_unlock(&self->_lock);
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v16 = subscriptions;
    v17 = [v16 countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v38;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v38 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v37 + 1) + 8 * i);
          v22 = [MEMORY[0x1E696AD98] numberWithInteger:index];
          v23 = [v21 isEqualToNumber:v22];

          if ((v23 & 1) == 0)
          {
            v24 = [v16 objectForKeyedSubscript:v21];
            [v24 cancel];
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v18);
    }

    os_unfair_recursive_lock_lock_with_options();
    downstream = [(_BPSFlatMapOuter *)self downstream];
    completionCopy = v36;
    error = [v36 error];
    v27 = [BPSCompletion failureWithError:error];
    [downstream receiveCompletion:v27];

    os_unfair_recursive_lock_unlock();
  }

  else if (!state)
  {
    os_unfair_lock_lock(&self->_lock);
    subscriptions2 = [(_BPSFlatMapOuter *)self subscriptions];
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:index];
    [subscriptions2 removeObjectForKey:v9];

    buffer = [(_BPSFlatMapOuter *)self buffer];
    if (buffer)
    {
      buffer2 = [(_BPSFlatMapOuter *)self buffer];
      v12 = [buffer2 count] == 0;
    }

    else
    {
      v12 = 1;
    }

    if (![(_BPSFlatMapOuter *)self cancelledOrCompleted])
    {
      if ([(_BPSFlatMapOuter *)self outerFinished])
      {
        subscriptions3 = [(_BPSFlatMapOuter *)self subscriptions];
        v29 = [subscriptions3 count];
        v30 = v29 + [(_BPSFlatMapOuter *)self pendingSubscriptions]== 0 && v12;

        if (v30 == 1)
        {
          [(_BPSFlatMapOuter *)self setCancelledOrCompleted:1];
          os_unfair_lock_unlock(&self->_lock);
          os_unfair_recursive_lock_lock_with_options();
          downstream2 = [(_BPSFlatMapOuter *)self downstream];
          v32 = +[BPSCompletion success];
          [downstream2 receiveCompletion:v32];

          os_unfair_recursive_lock_unlock();
          goto LABEL_25;
        }
      }
    }

    os_unfair_lock_unlock(&self->_lock);
    if ([(_BPSFlatMapOuter *)self maxPublishers]== 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_25;
    }

    v13 = 8;
    os_unfair_lock_lock(&self->_outerLock);
    outerSubscription = [(_BPSFlatMapOuter *)self outerSubscription];

    if (outerSubscription)
    {
      outerSubscription2 = [(_BPSFlatMapOuter *)self outerSubscription];
      os_unfair_lock_unlock(&self->_outerLock);
      [outerSubscription2 requestDemand:1];

      goto LABEL_25;
    }

LABEL_24:
    os_unfair_lock_unlock((self + v13));
  }

LABEL_25:

  v35 = *MEMORY[0x1E69E9840];
}

- (void)requestDemand:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"BPSFlatMap.m" lineNumber:164 description:@"Zero or negative demand requested"];
}

@end