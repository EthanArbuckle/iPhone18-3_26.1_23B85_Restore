@interface BPSFuture
- (BOOL)completed;
- (BPSFuture)initWithAttemptToFulfill:(id)a3;
- (id)nextEvent;
- (id)startWithSubscriber:(id)a3;
- (void)disassociate:(int64_t)a3;
- (void)reset;
- (void)subscribe:(id)a3;
@end

@implementation BPSFuture

- (BPSFuture)initWithAttemptToFulfill:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = BPSFuture;
  v5 = [(BPSFuture *)&v15 init];
  if (v5)
  {
    v6 = objc_opt_new();
    downstreams = v5->_downstreams;
    v5->_downstreams = v6;

    v5->_lock._os_unfair_lock_opaque = 0;
    v5->_publisherLock = 0;
    v8 = v5->_result;
    v5->_result = 0;

    v5->_sentResult = 0;
    objc_initWeak(&location, v5);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __38__BPSFuture_initWithAttemptToFulfill___block_invoke;
    aBlock[3] = &unk_1E8321148;
    objc_copyWeak(&v13, &location);
    v12 = v5;
    v9 = _Block_copy(aBlock);
    v4[2](v4, v9);

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  return v5;
}

void __38__BPSFuture_initWithAttemptToFulfill___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (BPSPipelineSupportsPullBasedPublishers(*(a1 + 32)))
    {
      os_unfair_recursive_lock_lock_with_options();
      [*(a1 + 32) setResult:v3];
      v5 = [*(a1 + 32) subscriber];
      [v5 requestNextEvents];

      os_unfair_recursive_lock_unlock();
    }

    else
    {
      os_unfair_lock_lock(WeakRetained + 2);
      v6 = [*(a1 + 32) result];

      if (v6)
      {
        os_unfair_lock_unlock(WeakRetained + 2);
      }

      else
      {
        [*(a1 + 32) setResult:v3];
        v7 = [*(a1 + 32) downstreams];
        v8 = [v7 claimAll];

        os_unfair_lock_unlock(WeakRetained + 2);
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

              [*(*(&v15 + 1) + 8 * v13++) fulfill:{v3, v15}];
            }

            while (v11 != v13);
            v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
          }

          while (v11);
        }
      }
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)subscribe:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v8 = [(BPSFuture *)self result];
  if (v8)
  {
    os_unfair_lock_unlock(&self->_lock);
    v5 = [[_BPSInnerFutureConduit alloc] initWithParent:self downstream:v4];
    [v4 receiveSubscription:v5];

    [(_BPSInnerFutureConduit *)v5 fulfill:v8];
  }

  else
  {
    v5 = [[_BPSInnerFutureConduit alloc] initWithParent:self downstream:v4];
    v6 = [(BPSFuture *)self downstreams];
    v7 = [v6 appendElement:v5];

    [(_BPSInnerFutureConduit *)v5 assignIdentity:v7];
    os_unfair_lock_unlock(&self->_lock);
    [v4 receiveSubscription:v5];
  }
}

- (void)disassociate:(int64_t)a3
{
  os_unfair_lock_lock(&self->_lock);
  v5 = [(BPSFuture *)self downstreams];
  [v5 removeTicket:a3];

  os_unfair_lock_unlock(&self->_lock);
}

- (id)startWithSubscriber:(id)a3
{
  v4 = a3;
  os_unfair_recursive_lock_lock_with_options();
  [(BPSFuture *)self setSubscriber:v4];

  os_unfair_recursive_lock_unlock();
  return 0;
}

- (id)nextEvent
{
  os_unfair_recursive_lock_lock_with_options();
  if ([(BPSFuture *)self sentResult])
  {
    v3 = 0;
  }

  else
  {
    v3 = [(BPSFuture *)self result];

    if (v3)
    {
      [(BPSFuture *)self setSentResult:1];
      v4 = [(BPSFuture *)self result];
      v3 = [v4 value];
    }
  }

  os_unfair_recursive_lock_unlock();

  return v3;
}

- (BOOL)completed
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = [(BPSFuture *)self sentResult];
  os_unfair_recursive_lock_unlock();
  return v3;
}

- (void)reset
{
  os_unfair_recursive_lock_lock_with_options();
  [(BPSFuture *)self setResult:0];
  [(BPSFuture *)self setSentResult:0];

  os_unfair_recursive_lock_unlock();
}

@end