@interface BPSSink
- (BPSSink)initWithReceiveBookmarkCompletion:(id)a3 receiveInput:(id)a4;
- (BPSSink)initWithReceiveBookmarkedCompletion:(id)a3 receiveInput:(id)a4;
- (BPSSink)initWithReceiveCompletion:(id)a3 receiveInput:(id)a4;
- (id)newBookmark;
- (int64_t)receiveInput:(id)a3;
- (void)_cancel;
- (void)_cancelPublisher:(id)a3;
- (void)cancel;
- (void)completeWithError:(id)a3;
- (void)receiveCompletion:(id)a3;
- (void)receiveSubscription:(id)a3;
- (void)requestNextEvents;
- (void)subscribeTo:(id)a3;
@end

@implementation BPSSink

- (void)requestNextEvents
{
  os_unfair_recursive_lock_lock_with_options();
  if (![(BPSSink *)self finished])
  {
    v3 = [(BPSSink *)self publisher];
    v4 = [v3 nextEvent];

    if (v4)
    {
      do
      {
        v5 = objc_autoreleasePoolPush();
        v6 = [(BPSSink *)self receivedValue];
        (v6)[2](v6, v4);

        v7 = [(BPSSink *)self publisher];
        v8 = [v7 nextEvent];

        objc_autoreleasePoolPop(v5);
        v4 = v8;
      }

      while (v8);
    }

    v9 = [(BPSSink *)self publisher];
    v10 = [v9 completed];

    if (v10)
    {
      [(BPSSink *)self completeWithError:0];
    }
  }

  os_unfair_recursive_lock_unlock();
}

- (BPSSink)initWithReceiveBookmarkedCompletion:(id)a3 receiveInput:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __72__BPSSink_BMBookmark__initWithReceiveBookmarkedCompletion_receiveInput___block_invoke;
  v11[3] = &unk_1E8320C80;
  objc_copyWeak(&v13, &location);
  v8 = v6;
  v12 = v8;
  v9 = [(BPSSink *)self initWithReceiveCompletion:v11 receiveInput:v7];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);

  return v9;
}

void __72__BPSSink_BMBookmark__initWithReceiveBookmarkedCompletion_receiveInput___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained newBookmark];

  (*(*(a1 + 32) + 16))();
}

- (id)newBookmark
{
  v3 = [(BPSSink *)self status];
  v4 = [v3 subscription];
  v5 = [v4 conformsToProtocol:&unk_1F4871E60];

  if (v5)
  {
    v6 = [(BPSSink *)self status];
    v7 = [v6 subscription];

    v8 = [v7 newBookmark];
    v9 = __biome_log_for_category();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __82__BPSDrivableSink_BMBookmark__initWithReceiveBookmarkedCompletion_shouldContinue___block_invoke_cold_1(v8, v9);
    }
  }

  else
  {
    v7 = __biome_log_for_category();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(BPSDrivableSink(BMBookmark) *)self newBookmark];
    }

    v8 = 0;
  }

  return v8;
}

- (BPSSink)initWithReceiveCompletion:(id)a3 receiveInput:(id)a4
{
  v6 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __50__BPSSink_initWithReceiveCompletion_receiveInput___block_invoke;
  v10[3] = &unk_1E8320D98;
  v11 = v6;
  v7 = v6;
  v8 = [(BPSSink *)self initWithReceiveBookmarkCompletion:v10 receiveInput:a4];

  return v8;
}

- (BPSSink)initWithReceiveBookmarkCompletion:(id)a3 receiveInput:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17.receiver = self;
  v17.super_class = BPSSink;
  v8 = [(BPSSink *)&v17 init];
  v9 = v8;
  if (v8)
  {
    v8->_demand = 0x7FFFFFFFFFFFFFFFLL;
    v10 = [v6 copy];
    receivedCompletion = v9->_receivedCompletion;
    v9->_receivedCompletion = v10;

    v12 = [v7 copy];
    receivedValue = v9->_receivedValue;
    v9->_receivedValue = v12;

    *&v9->_lock._os_unfair_lock_opaque = 0;
    v9->_rlock.ourl_count = 0;
    v14 = [[BPSSubscriptionStatus alloc] initWithState:0 subscription:0];
    status = v9->_status;
    v9->_status = v14;
  }

  return v9;
}

- (void)receiveSubscription:(id)a3
{
  v8 = a3;
  os_unfair_lock_lock(&self->_lock);
  v4 = [(BPSSink *)self status];
  v5 = [v4 state];

  if (v5)
  {
    os_unfair_lock_unlock(&self->_lock);
    [v8 cancel];
  }

  else
  {
    v6 = [(BPSSink *)self status];
    [v6 setState:1];

    v7 = [(BPSSink *)self status];
    [v7 setSubscription:v8];

    os_unfair_lock_unlock(&self->_lock);
    [v8 requestDemand:{-[BPSSink demand](self, "demand")}];
  }
}

- (void)receiveCompletion:(id)a3
{
  v4 = self;
  v5 = a3;
  v6 = __biome_log_for_category();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [BPSSink receiveCompletion:];
  }

  v7 = [(BPSSink *)v4 receivedCompletion];
  (v7)[2](v7, v5, 0);

  os_unfair_lock_lock(&v4->_lock);
  v8 = +[BPSSubscriptionStatus terminal];
  [(BPSSink *)v4 setStatus:v8];

  os_unfair_lock_unlock(&v4->_lock);
}

- (int64_t)receiveInput:(id)a3
{
  v4 = self;
  v5 = a3;
  v6 = [(BPSSink *)v4 receivedValue];
  (v6)[2](v6, v5);

  return 0;
}

- (void)cancel
{
  v7 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  OUTLINED_FUNCTION_0_6(&dword_1C871B000, v0, v1, "%@ - cancel", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)subscribeTo:(id)a3
{
  v4 = a3;
  os_unfair_recursive_lock_lock_with_options();
  [(BPSSink *)self setPublisher:v4];
  v5 = [(BPSSink *)self publisher];
  v6 = [v5 startWithSubscriber:self];

  if (v6)
  {
    [(BPSSink *)self completeWithError:v6];
  }

  else
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2050000000;
    v7 = getBMDSLSubscribeOnClass_softClass;
    v13 = getBMDSLSubscribeOnClass_softClass;
    if (!getBMDSLSubscribeOnClass_softClass)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __getBMDSLSubscribeOnClass_block_invoke;
      v9[3] = &unk_1E8320FB0;
      v9[4] = &v10;
      __getBMDSLSubscribeOnClass_block_invoke(v9);
      v7 = v11[3];
    }

    v8 = v7;
    _Block_object_dispose(&v10, 8);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(BPSSink *)self requestNextEvents];
    }
  }

  os_unfair_recursive_lock_unlock();
}

- (void)completeWithError:(id)a3
{
  v11 = a3;
  os_unfair_recursive_lock_lock_with_options();
  if (![(BPSSink *)self finished])
  {
    v4 = [(BPSSink *)self publisher];
    v5 = [v4 conformsToProtocol:&unk_1F4872E18];

    if (v5)
    {
      v6 = [(BPSSink *)self publisher];
      v7 = [v6 bookmarkNode];
    }

    else
    {
      v7 = 0;
    }

    v8 = [(BPSSink *)self publisher];
    [v8 reset];

    v9 = [(BPSSink *)self receivedCompletion];
    if (v11)
    {
      [BPSCompletion failureWithError:?];
    }

    else
    {
      +[BPSCompletion success];
    }
    v10 = ;
    (v9)[2](v9, v10, v7);

    [(BPSSink *)self setFinished:1];
    [(BPSSink *)self setPublisher:0];
  }

  os_unfair_recursive_lock_unlock();
}

- (void)_cancel
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = [(BPSSink *)self publisher];
  [(BPSSink *)self _cancelPublisher:v3];

  [(BPSSink *)self completeWithError:0];

  os_unfair_recursive_lock_unlock();
}

- (void)_cancelPublisher:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    [v4 performSelector:sel_cancel];
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [v4 upstreamPublishers];
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

        [(BPSSink *)self _cancelPublisher:*(*(&v11 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)receiveCompletion:.cold.1()
{
  v7 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  OUTLINED_FUNCTION_0_6(&dword_1C871B000, v0, v1, "%@ - completion", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

@end