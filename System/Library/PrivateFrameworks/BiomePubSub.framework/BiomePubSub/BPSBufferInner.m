@interface BPSBufferInner
- (BPSBufferInner)initWithDownstream:(id)a3 size:(unint64_t)a4 prefetch:(unint64_t)a5 whenFull:(unint64_t)a6;
- (id)_lockedPopWithDemand:(int64_t)a3;
- (id)newBookmark;
- (id)upstreamSubscriptions;
- (int64_t)_drain;
- (int64_t)receiveInput:(id)a3;
- (void)cancel;
- (void)receiveCompletion:(id)a3;
- (void)receiveSubscription:(id)a3;
- (void)requestDemand:(int64_t)a3;
@end

@implementation BPSBufferInner

- (BPSBufferInner)initWithDownstream:(id)a3 size:(unint64_t)a4 prefetch:(unint64_t)a5 whenFull:(unint64_t)a6
{
  v11 = a3;
  v19.receiver = self;
  v19.super_class = BPSBufferInner;
  v12 = [(BPSBufferInner *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_downstream, a3);
    v13->_size = a4;
    v13->_prefetch = a5;
    v13->_whenFull = a6;
    v13->_lock._os_unfair_lock_opaque = 0;
    v14 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:a4];
    values = v13->_values;
    v13->_values = v14;

    v16 = [[BPSSubscriptionStatus alloc] initWithState:0 subscription:0];
    status = v13->_status;
    v13->_status = v16;
  }

  return v13;
}

- (void)requestDemand:(int64_t)a3
{
  v7 = self;
  os_unfair_lock_lock(&v7->_lock);
  if ([(BPSSubscriptionStatus *)v7->_status state]== 1)
  {
    v4 = [(BPSSubscriptionStatus *)v7->_status subscription];
    v7->_downstreamDemand += a3;
    recursion = v7->_recursion;
    os_unfair_lock_unlock(&v7->_lock);
    if (!recursion)
    {
      v6 = [(BPSBufferInner *)v7 _drain];
      if (v6 >= 1)
      {
        [v4 requestDemand:v6];
      }
    }
  }

  else
  {
    os_unfair_lock_unlock(&v7->_lock);
  }
}

- (void)cancel
{
  v7 = self;
  os_unfair_lock_lock(&v7->_lock);
  if ([(BPSSubscriptionStatus *)v7->_status state]== 1)
  {
    v2 = [(BPSSubscriptionStatus *)v7->_status subscription];
    v3 = +[BPSSubscriptionStatus terminal];
    status = v7->_status;
    v7->_status = v3;

    v5 = objc_opt_new();
    values = v7->_values;
    v7->_values = v5;

    os_unfair_lock_unlock(&v7->_lock);
    [v2 cancel];
  }

  else
  {
    os_unfair_lock_unlock(&v7->_lock);
  }
}

- (void)receiveSubscription:(id)a3
{
  v8 = a3;
  os_unfair_lock_lock(&self->_lock);
  if ([(BPSSubscriptionStatus *)self->_status state])
  {
    os_unfair_lock_unlock(&self->_lock);
    [v8 cancel];
  }

  else
  {
    v4 = [[BPSSubscriptionStatus alloc] initWithState:1 subscription:v8];
    status = self->_status;
    self->_status = v4;

    prefetch = self->_prefetch;
    if (prefetch == 1)
    {
      size = 0x7FFFFFFFFFFFFFFFLL;
    }

    else if (prefetch)
    {
      size = 0;
    }

    else
    {
      size = self->_size;
    }

    os_unfair_lock_unlock(&self->_lock);
    [v8 requestDemand:size];
    [(BPSSubscriber *)self->_downstream receiveSubscription:self];
  }
}

- (int64_t)receiveInput:(id)a3
{
  v4 = a3;
  v5 = self;
  os_unfair_lock_lock(&v5->_lock);
  if ([(BPSSubscriptionStatus *)v5->_status state]== 1 && [(BPSCompletion *)v5->_terminal state]!= 1)
  {
    if ([(NSMutableArray *)v5->_values count]>= v5->_size)
    {
      whenFull = v5->_whenFull;
      if (!whenFull)
      {
LABEL_11:
        os_unfair_lock_unlock(&v5->_lock);
        v6 = [(BPSBufferInner *)v5 _drain];
        goto LABEL_12;
      }

      if (whenFull == 1 && [(NSMutableArray *)v5->_values count])
      {
        [(NSMutableArray *)v5->_values removeObjectAtIndex:0];
      }
    }

    if ([(NSMutableArray *)v5->_values count]< v5->_size)
    {
      [(NSMutableArray *)v5->_values addObject:v4];
    }

    goto LABEL_11;
  }

  os_unfair_lock_unlock(&v5->_lock);
  v6 = 0;
LABEL_12:

  return v6;
}

- (void)receiveCompletion:(id)a3
{
  v8 = a3;
  v5 = self;
  os_unfair_lock_lock(&v5->_lock);
  if ([(BPSSubscriptionStatus *)v5->_status state]!= 1)
  {
    goto LABEL_4;
  }

  if (v5->_terminal)
  {
    v6 = +[BPSSubscriptionStatus terminal];
    status = v5->_status;
    v5->_status = v6;

LABEL_4:
    os_unfair_lock_unlock(&v5->_lock);
    goto LABEL_5;
  }

  objc_storeStrong(&v5->_terminal, a3);
  os_unfair_lock_unlock(&v5->_lock);
  [(BPSBufferInner *)v5 _drain];
LABEL_5:
}

- (int64_t)_drain
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = 0;
  v4 = 8;
  os_unfair_lock_lock(&self->_lock);
  if ([(BPSSubscriptionStatus *)self->_status state]== 1)
  {
    v5 = 0;
    v25 = 8;
    while (self->_downstreamDemand)
    {
      if (![(NSMutableArray *)self->_values count]&& self->_terminal)
      {
        v23 = +[BPSSubscriptionStatus terminal];
        status = self->_status;
        self->_status = v23;

        os_unfair_lock_unlock((self + v4));
        [(BPSSubscriber *)self->_downstream receiveCompletion:self->_terminal];
        goto LABEL_25;
      }

      v6 = [(BPSBufferInner *)self _lockedPopWithDemand:self->_downstreamDemand, v25];
      self->_downstreamDemand -= [v6 count];
      if (![v6 count])
      {
        os_unfair_lock_unlock((self + v4));

        goto LABEL_25;
      }

      self->_recursion = 1;
      os_unfair_lock_unlock((self + v4));
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v8)
      {
        v9 = v8;
        v26 = v5;
        v10 = 0;
        v11 = *v28;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v28 != v11)
            {
              objc_enumerationMutation(v7);
            }

            v3 += [(BPSSubscriber *)self->_downstream receiveInput:*(*(&v27 + 1) + 8 * i)];
          }

          v10 += v9;
          v9 = [v7 countByEnumeratingWithState:&v27 objects:v31 count:16];
        }

        while (v9);
        v13 = v10;
        v5 = v26;
        v4 = v25;
      }

      else
      {
        v13 = 0;
      }

      if (self->_prefetch)
      {
        v13 = 0;
      }

      os_unfair_lock_lock((self + v4));
      self->_recursion = 0;
      if (v3 >= 1)
      {
        self->_downstreamDemand += v3;
      }

      v5 += v13;
      os_unfair_lock_unlock((self + v4));

      os_unfair_lock_lock((self + v4));
      v3 = 0;
      if ([(BPSSubscriptionStatus *)self->_status state]!= 1)
      {
        goto LABEL_23;
      }
    }

    terminal = self->_terminal;
    if (terminal && [(BPSCompletion *)terminal state]== 1)
    {
      v18 = +[BPSSubscriptionStatus terminal];
      v19 = self->_status;
      self->_status = v18;

      os_unfair_lock_unlock((self + v4));
      downstream = self->_downstream;
      v21 = [(BPSCompletion *)self->_terminal error];
      v22 = [BPSCompletion failureWithError:v21];
      [(BPSSubscriber *)downstream receiveCompletion:v22];

      goto LABEL_25;
    }

    v14 = (self + v4);
  }

  else
  {
    v5 = 0;
LABEL_23:
    v14 = (self + v4);
  }

  os_unfair_lock_unlock(v14);
LABEL_25:
  v15 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)_lockedPopWithDemand:(int64_t)a3
{
  if (a3 == 0x7FFFFFFFFFFFFFFFLL || [(NSMutableArray *)self->_values count]<= a3)
  {
    v7 = self->_values;
    v8 = objc_opt_new();
    values = self->_values;
    self->_values = v8;
  }

  else
  {
    v5 = a3 - 1;
    if (a3 < 1)
    {
      v7 = 0;
    }

    else
    {
      v6 = [(NSMutableArray *)self->_values subarrayWithRange:0, a3 - 1];
      v7 = [v6 mutableCopy];

      [(NSMutableArray *)self->_values removeObjectsInRange:0, v5];
    }
  }

  return v7;
}

- (id)newBookmark
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = [(BPSBufferInner *)self upstreamSubscriptions];
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
  values = self->_values;
  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  v17 = [(BMBookmarkNode *)v13 initWithValue:values upstreams:v3 name:v16];

  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

- (id)upstreamSubscriptions
{
  v7[1] = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  if ([(BPSSubscriptionStatus *)self->_status state]== 1)
  {
    v3 = [(BPSSubscriptionStatus *)self->_status subscription];
    os_unfair_lock_unlock(&self->_lock);
    v7[0] = v3;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
    v4 = MEMORY[0x1E695E0F0];
  }

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

@end