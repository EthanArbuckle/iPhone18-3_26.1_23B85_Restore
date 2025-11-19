@interface _BPSAbstractZip
- (_BPSAbstractZip)initWithDownstream:(id)a3 upstreamCount:(int64_t)a4;
- (int64_t)receiveInput:(id)a3 index:(int64_t)a4;
- (void)cancel;
- (void)lockSendCompletion:(id)a3 index:(int64_t)a4;
- (void)receiveCompletion:(id)a3 index:(int64_t)a4;
- (void)receiveSubscription:(id)a3 index:(int64_t)a4;
- (void)requestDemand:(int64_t)a3;
- (void)resolvePendingDemandAndUnlock;
@end

@implementation _BPSAbstractZip

- (_BPSAbstractZip)initWithDownstream:(id)a3 upstreamCount:(int64_t)a4
{
  v22 = a3;
  v23.receiver = self;
  v23.super_class = _BPSAbstractZip;
  v7 = [(_BPSAbstractZip *)&v23 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_downstream, a3);
    v8->_upstreamCount = a4;
    v9 = MEMORY[0x1E695E0F0];
    v10 = [MEMORY[0x1E695E0F0] mutableCopy];
    buffers = v8->_buffers;
    v8->_buffers = v10;

    v12 = [v9 mutableCopy];
    upstreamFinished = v8->_upstreamFinished;
    v8->_upstreamFinished = v12;

    v14 = [v9 mutableCopy];
    subscriptions = v8->_subscriptions;
    v8->_subscriptions = v14;

    v8->_lock._os_unfair_lock_opaque = 0;
    v8->_downstreamLock = 0;
    if (a4 >= 1)
    {
      v16 = MEMORY[0x1E695E110];
      do
      {
        v17 = v8->_subscriptions;
        v18 = [MEMORY[0x1E695DFB0] null];
        [(NSMutableArray *)v17 addObject:v18];

        v19 = v8->_buffers;
        v20 = [v9 mutableCopy];
        [(NSMutableArray *)v19 addObject:v20];

        [(NSMutableArray *)v8->_upstreamFinished addObject:v16];
        --a4;
      }

      while (a4);
    }
  }

  return v8;
}

- (void)receiveSubscription:(id)a3 index:(int64_t)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v7 = a3;
  if ([(_BPSAbstractZip *)self upstreamCount]<= a4)
  {
    [_BPSAbstractZip receiveSubscription:a2 index:self];
  }

  os_unfair_lock_lock(&self->_lock);
  if ([(_BPSAbstractZip *)self cancelled])
  {
    goto LABEL_16;
  }

  if ([(_BPSAbstractZip *)self errored])
  {
    goto LABEL_16;
  }

  if ([(_BPSAbstractZip *)self finished])
  {
    goto LABEL_16;
  }

  v8 = [(_BPSAbstractZip *)self subscriptions];
  v9 = [v8 objectAtIndexedSubscript:a4];
  v10 = [MEMORY[0x1E695DFB0] null];
  v11 = [v9 isEqual:v10];

  if ((v11 & 1) == 0)
  {
LABEL_16:
    os_unfair_lock_unlock(&self->_lock);
    [v7 cancel];
  }

  else
  {
    v12 = [(_BPSAbstractZip *)self subscriptions];
    [v12 setObject:v7 atIndexedSubscript:a4];

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v13 = [(_BPSAbstractZip *)self subscriptions];
    v14 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v23;
      while (2)
      {
        v17 = 0;
        do
        {
          if (*v23 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v22 + 1) + 8 * v17);
          v19 = [MEMORY[0x1E695DFB0] null];
          LOBYTE(v18) = [v18 isEqual:v19];

          if (v18)
          {

            [(_BPSAbstractZip *)self setRecursive:0];
            os_unfair_lock_unlock(&self->_lock);
            goto LABEL_17;
          }

          ++v17;
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    [(_BPSAbstractZip *)self setRecursive:1];
    os_unfair_lock_unlock(&self->_lock);
    os_unfair_recursive_lock_lock_with_options();
    v20 = [(_BPSAbstractZip *)self downstream];
    [v20 receiveSubscription:self];

    os_unfair_recursive_lock_unlock();
    os_unfair_lock_lock(&self->_lock);
    [(_BPSAbstractZip *)self setRecursive:0];
    [(_BPSAbstractZip *)self resolvePendingDemandAndUnlock];
  }

LABEL_17:

  v21 = *MEMORY[0x1E69E9840];
}

- (int64_t)receiveInput:(id)a3 index:(int64_t)a4
{
  v57 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = self;
  if ([(_BPSAbstractZip *)v8 upstreamCount]<= a4)
  {
    [_BPSAbstractZip receiveInput:a2 index:v8];
  }

  os_unfair_lock_lock(&v8->_lock);
  if ([(_BPSAbstractZip *)v8 cancelled]|| [(_BPSAbstractZip *)v8 errored]|| [(_BPSAbstractZip *)v8 finished])
  {
LABEL_37:
    os_unfair_lock_unlock(&v8->_lock);
LABEL_38:
    v29 = 0;
  }

  else
  {
    v9 = [(_BPSAbstractZip *)v8 buffers];
    v46 = a4;
    v10 = [v9 objectAtIndexedSubscript:a4];
    [v10 addObject:v7];

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v11 = [(_BPSAbstractZip *)v8 buffers];
    v12 = [v11 countByEnumeratingWithState:&v51 objects:v56 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v52;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v52 != v14)
          {
            objc_enumerationMutation(v11);
          }

          if (![*(*(&v51 + 1) + 8 * i) count])
          {

            if ([(_BPSAbstractZip *)v8 upstreamCount]>= 1)
            {
              v36 = 0;
              while (1)
              {
                v37 = [(_BPSAbstractZip *)v8 upstreamFinished];
                v38 = [v37 objectAtIndexedSubscript:v36];

                objc_opt_class();
                if (objc_opt_isKindOfClass() & 1) != 0 && ([v38 BOOLValue])
                {
                  v39 = [(_BPSAbstractZip *)v8 buffers];
                  v40 = [v39 objectAtIndexedSubscript:v36];
                  v41 = [v40 count];

                  if (!v41)
                  {
                    [(_BPSAbstractZip *)v8 setFinished:1];
                    v44 = +[BPSCompletion success];
                    [(_BPSAbstractZip *)v8 lockSendCompletion:v44 index:v46];

                    goto LABEL_38;
                  }
                }

                else
                {
                }

                if (++v36 >= [(_BPSAbstractZip *)v8 upstreamCount])
                {
                  goto LABEL_37;
                }
              }
            }

            goto LABEL_37;
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v51 objects:v56 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    v45 = v7;

    v16 = MEMORY[0x1E695E0F0];
    v17 = [MEMORY[0x1E695E0F0] mutableCopy];
    v18 = [v16 mutableCopy];
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v19 = [(_BPSAbstractZip *)v8 buffers];
    v20 = [v19 countByEnumeratingWithState:&v47 objects:v55 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v48;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v48 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v47 + 1) + 8 * j);
          v25 = [v24 objectAtIndexedSubscript:0];
          [v24 removeObjectAtIndex:0];
          [v18 addObject:v25];
          v26 = [v24 mutableCopy];
          [v17 addObject:v26];
        }

        v21 = [v19 countByEnumeratingWithState:&v47 objects:v55 count:16];
      }

      while (v21);
    }

    [(_BPSAbstractZip *)v8 setBuffers:v17];
    [(_BPSAbstractZip *)v8 setRecursive:1];
    os_unfair_lock_unlock(&v8->_lock);
    v27 = [(_BPSAbstractZip *)v8 convertValues:v18];
    os_unfair_recursive_lock_lock_with_options();
    v28 = [(_BPSAbstractZip *)v8 downstream];
    v29 = [v28 receiveInput:v27];

    os_unfair_recursive_lock_unlock();
    os_unfair_lock_lock(&v8->_lock);
    [(_BPSAbstractZip *)v8 setRecursive:0];
    [(_BPSAbstractZip *)v8 setPendingDemand:0];
    if (v29 < 1)
    {
      os_unfair_lock_unlock(&v8->_lock);
      v29 = 0;
    }

    else
    {
      v30 = [(_BPSAbstractZip *)v8 subscriptions];
      v31 = [v30 copy];

      os_unfair_lock_unlock(&v8->_lock);
      if ([v31 count] >= 1)
      {
        v32 = 0;
        do
        {
          v33 = [v31 objectAtIndexedSubscript:v32];
          if (v46 != v32)
          {
            v34 = [MEMORY[0x1E695DFB0] null];
            v35 = [v33 isEqual:v34];

            if ((v35 & 1) == 0)
            {
              [v33 requestDemand:v29];
            }
          }

          ++v32;
        }

        while (v32 < [v31 count]);
      }
    }

    v7 = v45;
  }

  v42 = *MEMORY[0x1E69E9840];
  return v29;
}

- (void)receiveCompletion:(id)a3 index:(int64_t)a4
{
  v12 = a3;
  v6 = self;
  os_unfair_lock_lock(&v6->_lock);
  if ([(_BPSAbstractZip *)v6 cancelled]|| [(_BPSAbstractZip *)v6 errored]|| [(_BPSAbstractZip *)v6 finished])
  {
    goto LABEL_4;
  }

  v7 = [v12 state];
  if (v7 == 1)
  {
    [(_BPSAbstractZip *)v6 setErrored:1];
  }

  else
  {
    if (v7)
    {
      goto LABEL_5;
    }

    v8 = [(_BPSAbstractZip *)v6 upstreamFinished];
    [v8 setObject:MEMORY[0x1E695E118] atIndexedSubscript:a4];

    v9 = [(_BPSAbstractZip *)v6 buffers];
    v10 = [v9 objectAtIndexedSubscript:a4];
    v11 = [v10 count];

    if (v11)
    {
LABEL_4:
      os_unfair_lock_unlock(&v6->_lock);
      goto LABEL_5;
    }

    [(_BPSAbstractZip *)v6 setFinished:1];
  }

  [(_BPSAbstractZip *)v6 lockSendCompletion:v12 index:a4];
LABEL_5:
}

- (void)lockSendCompletion:(id)a3 index:(int64_t)a4
{
  v16 = a3;
  v5 = [(_BPSAbstractZip *)self subscriptions];
  v6 = [v5 copy];

  if ([(_BPSAbstractZip *)self upstreamCount]>= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E695E0F0];
    do
    {
      v9 = [v8 mutableCopy];
      v10 = [(_BPSAbstractZip *)self buffers];
      [v10 setObject:v9 atIndexedSubscript:v7];

      v11 = [MEMORY[0x1E695DFB0] null];
      v12 = [(_BPSAbstractZip *)self subscriptions];
      [v12 setObject:v11 atIndexedSubscript:v7];

      ++v7;
    }

    while (v7 < [(_BPSAbstractZip *)self upstreamCount]);
  }

  [(_BPSAbstractZip *)self setRecursive:1];
  os_unfair_lock_unlock(&self->_lock);
  if ([v6 count])
  {
    v13 = 0;
    do
    {
      v14 = [v6 objectAtIndexedSubscript:v13];
      if ([v14 conformsToProtocol:&unk_1F4871D30])
      {
        [v14 cancel];
      }

      ++v13;
    }

    while (v13 < [v6 count]);
  }

  os_unfair_recursive_lock_lock_with_options();
  v15 = [(_BPSAbstractZip *)self downstream];
  [v15 receiveCompletion:v16];

  os_unfair_recursive_lock_unlock();
  os_unfair_lock_lock(&self->_lock);
  [(_BPSAbstractZip *)self setRecursive:0];
  [(_BPSAbstractZip *)self resolvePendingDemandAndUnlock];
}

- (void)cancel
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = self;
  os_unfair_lock_lock(&v2->_lock);
  if ([(_BPSAbstractZip *)v2 cancelled])
  {
    os_unfair_lock_unlock(&v2->_lock);
  }

  else
  {
    v3 = [(_BPSAbstractZip *)v2 subscriptions];
    v4 = [v3 copy];

    [(_BPSAbstractZip *)v2 setCancelled:1];
    if ([(_BPSAbstractZip *)v2 upstreamCount]>= 1)
    {
      v5 = 0;
      v6 = MEMORY[0x1E695E0F0];
      do
      {
        v7 = [v6 mutableCopy];
        v8 = [(_BPSAbstractZip *)v2 buffers];
        [v8 setObject:v7 atIndexedSubscript:v5];

        v9 = [MEMORY[0x1E695DFB0] null];
        v10 = [(_BPSAbstractZip *)v2 subscriptions];
        [v10 setObject:v9 atIndexedSubscript:v5];

        ++v5;
      }

      while (v5 < [(_BPSAbstractZip *)v2 upstreamCount]);
    }

    os_unfair_lock_unlock(&v2->_lock);
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v11 = v4;
    v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v19;
      do
      {
        v15 = 0;
        do
        {
          if (*v19 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v18 + 1) + 8 * v15);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            [v16 cancel];
          }

          ++v15;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v13);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)resolvePendingDemandAndUnlock
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [(_BPSAbstractZip *)self subscriptions];
  v4 = [v3 copy];

  v5 = [(_BPSAbstractZip *)self pendingDemand];
  [(_BPSAbstractZip *)self setPendingDemand:0];
  os_unfair_lock_unlock(&self->_lock);
  if (v5 >= 1)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = v4;
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

          v11 = *(*(&v13 + 1) + 8 * v10);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            [v11 requestDemand:{v5, v13}];
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)requestDemand:(int64_t)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = self;
  if (a3 <= 0)
  {
    [(_BPSAbstractZip *)a2 requestDemand:v5];
  }

  os_unfair_lock_lock(&v5->_lock);
  if ([(_BPSAbstractZip *)v5 recursive])
  {
    [(_BPSAbstractZip *)v5 setPendingDemand:[(_BPSAbstractZip *)v5 pendingDemand]+ a3];
LABEL_8:
    os_unfair_lock_unlock(&v5->_lock);
    goto LABEL_9;
  }

  if ([(_BPSAbstractZip *)v5 cancelled]|| [(_BPSAbstractZip *)v5 errored]|| [(_BPSAbstractZip *)v5 finished])
  {
    goto LABEL_8;
  }

  v7 = [(_BPSAbstractZip *)v5 subscriptions];
  v8 = [v7 copy];

  os_unfair_lock_unlock(&v5->_lock);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v15 + 1) + 8 * v13);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [v14 requestDemand:{a3, v15}];
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }

LABEL_9:
  v6 = *MEMORY[0x1E69E9840];
}

- (void)receiveSubscription:(uint64_t)a1 index:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"BPSZip.m" lineNumber:56 description:@"Index should be less than upstream count"];
}

- (void)receiveInput:(uint64_t)a1 index:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"BPSZip.m" lineNumber:97 description:@"Expecting Index to be less than upstream count"];
}

- (void)requestDemand:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"BPSZip.m" lineNumber:272 description:@"Demand should be greater than 0"];
}

@end