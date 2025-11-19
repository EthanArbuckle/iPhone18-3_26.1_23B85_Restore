@interface _BPSFlatMapOuter
- (_BPSFlatMapOuter)initWithDownstream:(id)a3 maxPublishers:(int64_t)a4 map:(id)a5;
- (id)newBookmark;
- (id)upstreamSubscriptions;
- (int64_t)receiveInnerInput:(id)a3 index:(int64_t)a4;
- (int64_t)receiveInput:(id)a3;
- (void)_updateBookmarkWhenLocked;
- (void)cancel;
- (void)receiveCompletion:(id)a3;
- (void)receiveInnerCompletion:(id)a3 index:(int64_t)a4;
- (void)receiveInnerSubscription:(id)a3 index:(int64_t)a4;
- (void)receiveSubscription:(id)a3;
- (void)requestDemand:(int64_t)a3;
@end

@implementation _BPSFlatMapOuter

- (_BPSFlatMapOuter)initWithDownstream:(id)a3 maxPublishers:(int64_t)a4 map:(id)a5
{
  v9 = a3;
  v10 = a5;
  v22.receiver = self;
  v22.super_class = _BPSFlatMapOuter;
  v11 = [(_BPSFlatMapOuter *)&v22 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_downstream, a3);
    v13 = [MEMORY[0x1E695DFB0] null];
    outerBookmark = v12->_outerBookmark;
    v12->_outerBookmark = v13;

    v15 = objc_opt_new();
    subscriptions = v12->_subscriptions;
    v12->_subscriptions = v15;

    v12->_maxPublishers = a4;
    v17 = [v10 copy];
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

- (void)receiveSubscription:(id)a3
{
  v5 = a3;
  os_unfair_lock_lock(&self->_lock);
  v4 = [(_BPSFlatMapOuter *)self outerSubscription];
  if (v4)
  {

LABEL_4:
    os_unfair_lock_unlock(&self->_lock);
    [v5 cancel];
    goto LABEL_5;
  }

  if ([(_BPSFlatMapOuter *)self cancelledOrCompleted])
  {
    goto LABEL_4;
  }

  os_unfair_lock_unlock(&self->_lock);
  [(_BPSFlatMapOuter *)self setOuterSubscription:v5];
  [v5 requestDemand:{-[_BPSFlatMapOuter maxPublishers](self, "maxPublishers")}];
LABEL_5:
}

- (int64_t)receiveInput:(id)a3
{
  v4 = a3;
  v5 = self;
  os_unfair_lock_lock(&v5->_lock);
  v6 = [(_BPSFlatMapOuter *)v5 cancelledOrCompleted];
  os_unfair_lock_unlock(&v5->_lock);
  if (!v6)
  {
    v7 = [(_BPSFlatMapOuter *)v5 map];
    v8 = (v7)[2](v7, v4);

    v9 = [(_BPSFlatMapOuter *)v5 nextInnerIndex];
    [(_BPSFlatMapOuter *)v5 setNextInnerIndex:[(_BPSFlatMapOuter *)v5 nextInnerIndex]+ 1];
    os_unfair_lock_lock(&v5->_lock);
    [(_BPSFlatMapOuter *)v5 setPendingSubscriptions:[(_BPSFlatMapOuter *)v5 pendingSubscriptions]+ 1];
    os_unfair_lock_unlock(&v5->_lock);
    v10 = [[_BPSFlatMapSide alloc] initWithIndex:v9 outer:v5];
    [v8 subscribe:v10];
  }

  return 0;
}

- (void)receiveCompletion:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self;
  os_unfair_lock_lock(&v5->_lock);
  [(_BPSFlatMapOuter *)v5 setOuterFinished:1];
  [(_BPSFlatMapOuter *)v5 _updateBookmarkWhenLocked];
  [(_BPSFlatMapOuter *)v5 setOuterSubscription:0];
  v6 = [v4 state];
  if (v6 == 1)
  {
    v10 = [(_BPSFlatMapOuter *)v5 cancelledOrCompleted];
    [(_BPSFlatMapOuter *)v5 setCancelledOrCompleted:1];
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v11 = [(_BPSFlatMapOuter *)v5 subscriptions];
    v12 = [v11 countByEnumeratingWithState:&v29 objects:v33 count:16];
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
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v29 + 1) + 8 * i);
          v17 = [(_BPSFlatMapOuter *)v5 subscriptions];
          v18 = [v17 objectForKeyedSubscript:v16];

          [v18 cancel];
        }

        v13 = [v11 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v13);
    }

    v19 = [MEMORY[0x1E695E0F8] mutableCopy];
    [(_BPSFlatMapOuter *)v5 setSubscriptions:v19];

    os_unfair_lock_unlock(&v5->_lock);
    if (!v10)
    {
      os_unfair_recursive_lock_lock_with_options();
      v20 = [(_BPSFlatMapOuter *)v5 downstream];
      v21 = [v4 error];
      v22 = [BPSCompletion failureWithError:v21];
      [v20 receiveCompletion:v22];

LABEL_19:
      os_unfair_recursive_lock_unlock();
    }
  }

  else if (!v6)
  {
    v7 = [(_BPSFlatMapOuter *)v5 buffer];
    if (v7)
    {
      v8 = [(_BPSFlatMapOuter *)v5 buffer];
      v9 = [v8 count] != 0;
    }

    else
    {
      v9 = 0;
    }

    if (-[_BPSFlatMapOuter cancelledOrCompleted](v5, "cancelledOrCompleted") || v9 || (-[_BPSFlatMapOuter subscriptions](v5, "subscriptions"), v23 = objc_claimAutoreleasedReturnValue(), v24 = [v23 count], v25 = -[_BPSFlatMapOuter pendingSubscriptions](v5, "pendingSubscriptions"), v23, v24 + v25))
    {
      os_unfair_lock_unlock(&v5->_lock);
      goto LABEL_21;
    }

    [(_BPSFlatMapOuter *)v5 setCancelledOrCompleted:1];
    os_unfair_lock_unlock(&v5->_lock);
    os_unfair_recursive_lock_lock_with_options();
    v26 = [(_BPSFlatMapOuter *)v5 downstream];
    v27 = +[BPSCompletion success];
    [v26 receiveCompletion:v27];

    goto LABEL_19;
  }

LABEL_21:

  v28 = *MEMORY[0x1E69E9840];
}

- (void)requestDemand:(int64_t)a3
{
  v59 = *MEMORY[0x1E69E9840];
  v5 = self;
  if (a3 <= 0)
  {
    [(_BPSFlatMapOuter *)a2 requestDemand:v5];
  }

  if ([(_BPSFlatMapOuter *)v5 downstreamRecursive])
  {
    [(_BPSFlatMapOuter *)v5 setDownstreamDemand:[(_BPSFlatMapOuter *)v5 downstreamDemand]+ a3];
  }

  else
  {
    os_unfair_lock_lock(&v5->_lock);
    if ([(_BPSFlatMapOuter *)v5 cancelledOrCompleted])
    {
      goto LABEL_40;
    }

    if (a3 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [(_BPSFlatMapOuter *)v5 setDownstreamDemand:0x7FFFFFFFFFFFFFFFLL];
      v6 = [(_BPSFlatMapOuter *)v5 buffer];
      v7 = [MEMORY[0x1E695E0F0] mutableCopy];
      [(_BPSFlatMapOuter *)v5 setBuffer:v7];

      v48 = [(_BPSFlatMapOuter *)v5 subscriptions];
      os_unfair_lock_unlock(&v5->_lock);
      os_unfair_recursive_lock_lock_with_options();
      [(_BPSFlatMapOuter *)v5 setDownstreamRecursive:1];
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v8 = v6;
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
            v14 = [(_BPSFlatMapOuter *)v5 downstream];
            v15 = [v13 second];
            [v14 receiveInput:v15];
          }

          v10 = [v8 countByEnumeratingWithState:&v53 objects:v58 count:16];
        }

        while (v10);
      }

      [(_BPSFlatMapOuter *)v5 setDownstreamRecursive:0];
      os_unfair_recursive_lock_unlock();
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v16 = v48;
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

      os_unfair_lock_lock(&v5->_lock);
    }

    else
    {
      [(_BPSFlatMapOuter *)v5 setDownstreamDemand:[(_BPSFlatMapOuter *)v5 downstreamDemand]+ a3];
      v22 = [(_BPSFlatMapOuter *)v5 buffer];
      if (v22)
      {
        v23 = v22;
        v24 = [(_BPSFlatMapOuter *)v5 buffer];
        v25 = [v24 count];

        if (v25)
        {
          while ([(_BPSFlatMapOuter *)v5 downstreamDemand]>= 1)
          {
            v26 = [(_BPSFlatMapOuter *)v5 buffer];
            v27 = [v26 firstObject];

            v28 = [(_BPSFlatMapOuter *)v5 buffer];
            [v28 removeObjectAtIndex:0];

            [(_BPSFlatMapOuter *)v5 setDownstreamDemand:[(_BPSFlatMapOuter *)v5 downstreamDemand]- 1];
            v29 = [(_BPSFlatMapOuter *)v5 subscriptions];
            v30 = [v27 first];
            v31 = [v29 objectForKeyedSubscript:v30];

            os_unfair_lock_unlock(&v5->_lock);
            os_unfair_recursive_lock_lock_with_options();
            [(_BPSFlatMapOuter *)v5 setDownstreamRecursive:1];
            v32 = [(_BPSFlatMapOuter *)v5 downstream];
            v33 = [v27 second];
            v34 = [v32 receiveInput:v33];

            [(_BPSFlatMapOuter *)v5 setDownstreamRecursive:0];
            os_unfair_recursive_lock_unlock();
            if (v34 >= 1)
            {
              os_unfair_lock_lock(&v5->_lock);
              [(_BPSFlatMapOuter *)v5 setDownstreamDemand:[(_BPSFlatMapOuter *)v5 downstreamDemand]+ v34];
              os_unfair_lock_unlock(&v5->_lock);
            }

            if (v31)
            {
              [(_BPSFlatMapOuter *)v5 setInnerRecursive:1];
              [v31 requestDemand:1];
              [(_BPSFlatMapOuter *)v5 setInnerRecursive:0];
            }

            os_unfair_lock_lock(&v5->_lock);
            v35 = [(_BPSFlatMapOuter *)v5 buffer];
            if (!v35)
            {

              break;
            }

            v36 = v35;
            v37 = [(_BPSFlatMapOuter *)v5 buffer];
            v38 = [v37 count];

            if (!v38)
            {
              break;
            }
          }
        }
      }
    }

    v39 = [(_BPSFlatMapOuter *)v5 buffer];
    if (v39)
    {
      v40 = [(_BPSFlatMapOuter *)v5 buffer];
      v41 = [v40 count] != 0;
    }

    else
    {
      v41 = 0;
    }

    if (-[_BPSFlatMapOuter cancelledOrCompleted](v5, "cancelledOrCompleted") || v41 | !-[_BPSFlatMapOuter outerFinished](v5, "outerFinished") || (-[_BPSFlatMapOuter subscriptions](v5, "subscriptions"), v42 = objc_claimAutoreleasedReturnValue(), v43 = [v42 count], v44 = -[_BPSFlatMapOuter pendingSubscriptions](v5, "pendingSubscriptions"), v42, v43 + v44))
    {
LABEL_40:
      os_unfair_lock_unlock(&v5->_lock);
    }

    else
    {
      [(_BPSFlatMapOuter *)v5 setCancelledOrCompleted:1];
      os_unfair_lock_unlock(&v5->_lock);
      os_unfair_recursive_lock_lock_with_options();
      v45 = [(_BPSFlatMapOuter *)v5 downstream];
      v46 = +[BPSCompletion success];
      [v45 receiveCompletion:v46];

      os_unfair_recursive_lock_unlock();
    }
  }

  v47 = *MEMORY[0x1E69E9840];
}

- (void)cancel
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = self;
  os_unfair_lock_lock(&v2->_lock);
  [(_BPSFlatMapOuter *)v2 setCancelledOrCompleted:1];
  v3 = [(_BPSFlatMapOuter *)v2 subscriptions];
  v4 = [MEMORY[0x1E695E0F8] mutableCopy];
  [(_BPSFlatMapOuter *)v2 setSubscriptions:v4];

  v5 = [(_BPSFlatMapOuter *)v2 outerSubscription];
  [(_BPSFlatMapOuter *)v2 _updateBookmarkWhenLocked];
  [(_BPSFlatMapOuter *)v2 setOuterSubscription:0];
  os_unfair_lock_unlock(&v2->_lock);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = v3;
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

  [v5 cancel];
  v12 = *MEMORY[0x1E69E9840];
}

- (id)upstreamSubscriptions
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = [(_BPSFlatMapOuter *)self outerSubscription];
  if (v3)
  {
    v4 = [(_BPSFlatMapOuter *)self outerSubscription];
    v8[0] = v4;
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
  v5 = [(_BPSFlatMapOuter *)self outerSubscription];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [(BMBookmarkNode *)v3 initWithValue:0 upstreams:v4 name:v7];

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

- (void)receiveInnerSubscription:(id)a3 index:(int64_t)a4
{
  v9 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(_BPSFlatMapOuter *)self setPendingSubscriptions:[(_BPSFlatMapOuter *)self pendingSubscriptions]- 1];
  v6 = [(_BPSFlatMapOuter *)self subscriptions];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  [v6 setObject:v9 forKeyedSubscript:v7];

  if ([(_BPSFlatMapOuter *)self downstreamDemand]== 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = 1;
  }

  os_unfair_lock_unlock(&self->_lock);
  [v9 requestDemand:v8];
}

- (int64_t)receiveInnerInput:(id)a3 index:(int64_t)a4
{
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  if ([(_BPSFlatMapOuter *)self downstreamDemand]== 0x7FFFFFFFFFFFFFFFLL)
  {
    os_unfair_lock_unlock(&self->_lock);
    os_unfair_recursive_lock_lock_with_options();
    [(_BPSFlatMapOuter *)self setDownstreamRecursive:1];
    v7 = [(_BPSFlatMapOuter *)self downstream];
    [v7 receiveInput:v6];

    [(_BPSFlatMapOuter *)self setDownstreamRecursive:0];
    os_unfair_recursive_lock_unlock();
LABEL_6:
    v12 = 0;
    goto LABEL_7;
  }

  if ([(_BPSFlatMapOuter *)self downstreamDemand]< 1 || [(_BPSFlatMapOuter *)self innerRecursive])
  {
    v8 = [(_BPSFlatMapOuter *)self buffer];
    v9 = [BPSTuple alloc];
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
    v11 = [(BPSTuple *)v9 initWithFirst:v10 second:v6];
    [v8 addObject:v11];

    os_unfair_lock_unlock(&self->_lock);
    goto LABEL_6;
  }

  [(_BPSFlatMapOuter *)self setDownstreamDemand:[(_BPSFlatMapOuter *)self downstreamDemand]- 1];
  os_unfair_lock_unlock(&self->_lock);
  os_unfair_recursive_lock_lock_with_options();
  v12 = 1;
  [(_BPSFlatMapOuter *)self setDownstreamRecursive:1];
  v14 = [(_BPSFlatMapOuter *)self downstream];
  v15 = [v14 receiveInput:v6];

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

- (void)receiveInnerCompletion:(id)a3 index:(int64_t)a4
{
  v42 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 state];
  if (v7 == 1)
  {
    v13 = 12;
    os_unfair_lock_lock(&self->_lock);
    if ([(_BPSFlatMapOuter *)self cancelledOrCompleted])
    {
      goto LABEL_24;
    }

    v36 = v6;
    [(_BPSFlatMapOuter *)self setCancelledOrCompleted:1];
    v14 = [(_BPSFlatMapOuter *)self subscriptions];
    v15 = [MEMORY[0x1E695E0F8] mutableCopy];
    [(_BPSFlatMapOuter *)self setSubscriptions:v15];

    os_unfair_lock_unlock(&self->_lock);
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v16 = v14;
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
          v22 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
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
    v25 = [(_BPSFlatMapOuter *)self downstream];
    v6 = v36;
    v26 = [v36 error];
    v27 = [BPSCompletion failureWithError:v26];
    [v25 receiveCompletion:v27];

    os_unfair_recursive_lock_unlock();
  }

  else if (!v7)
  {
    os_unfair_lock_lock(&self->_lock);
    v8 = [(_BPSFlatMapOuter *)self subscriptions];
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
    [v8 removeObjectForKey:v9];

    v10 = [(_BPSFlatMapOuter *)self buffer];
    if (v10)
    {
      v11 = [(_BPSFlatMapOuter *)self buffer];
      v12 = [v11 count] == 0;
    }

    else
    {
      v12 = 1;
    }

    if (![(_BPSFlatMapOuter *)self cancelledOrCompleted])
    {
      if ([(_BPSFlatMapOuter *)self outerFinished])
      {
        v28 = [(_BPSFlatMapOuter *)self subscriptions];
        v29 = [v28 count];
        v30 = v29 + [(_BPSFlatMapOuter *)self pendingSubscriptions]== 0 && v12;

        if (v30 == 1)
        {
          [(_BPSFlatMapOuter *)self setCancelledOrCompleted:1];
          os_unfair_lock_unlock(&self->_lock);
          os_unfair_recursive_lock_lock_with_options();
          v31 = [(_BPSFlatMapOuter *)self downstream];
          v32 = +[BPSCompletion success];
          [v31 receiveCompletion:v32];

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
    v33 = [(_BPSFlatMapOuter *)self outerSubscription];

    if (v33)
    {
      v34 = [(_BPSFlatMapOuter *)self outerSubscription];
      os_unfair_lock_unlock(&self->_outerLock);
      [v34 requestDemand:1];

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