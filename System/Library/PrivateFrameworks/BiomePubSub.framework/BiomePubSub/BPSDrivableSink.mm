@interface BPSDrivableSink
- (BPSDrivableSink)initWithReceiveBookmarkCompletion:(id)a3 shouldContinue:(id)a4;
- (BPSDrivableSink)initWithReceiveBookmarkedCompletion:(id)a3 shouldContinue:(id)a4;
- (BPSDrivableSink)initWithReceiveCompletion:(id)a3 shouldContinue:(id)a4;
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

@implementation BPSDrivableSink

- (void)requestNextEvents
{
  os_unfair_recursive_lock_lock_with_options();
  if (![(BPSDrivableSink *)self finished])
  {
    v3 = [(BPSDrivableSink *)self publisher];
    v4 = [v3 nextEvent];

    if (v4)
    {
      while (1)
      {
        v5 = objc_autoreleasePoolPush();
        v6 = [(BPSDrivableSink *)self shouldContinue];
        v7 = (v6)[2](v6, v4);

        if (!v7)
        {
          break;
        }

        v8 = [(BPSDrivableSink *)self publisher];
        v9 = [v8 nextEvent];

        objc_autoreleasePoolPop(v5);
        v4 = v9;
        if (!v9)
        {
          goto LABEL_5;
        }
      }

      objc_autoreleasePoolPop(v5);
      [(BPSDrivableSink *)self completeWithError:0];
    }

    else
    {
LABEL_5:
      v10 = [(BPSDrivableSink *)self publisher];
      v11 = [v10 completed];

      if (v11)
      {
        [(BPSDrivableSink *)self completeWithError:0];
      }
    }
  }

  os_unfair_recursive_lock_unlock();
}

- (BPSDrivableSink)initWithReceiveBookmarkedCompletion:(id)a3 shouldContinue:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __82__BPSDrivableSink_BMBookmark__initWithReceiveBookmarkedCompletion_shouldContinue___block_invoke;
  v11[3] = &unk_1E8320C80;
  objc_copyWeak(&v13, &location);
  v8 = v6;
  v12 = v8;
  v9 = [(BPSDrivableSink *)self initWithReceiveCompletion:v11 shouldContinue:v7];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);

  return v9;
}

void __82__BPSDrivableSink_BMBookmark__initWithReceiveBookmarkedCompletion_shouldContinue___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained newBookmark];

  v6 = __biome_log_for_category();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __82__BPSDrivableSink_BMBookmark__initWithReceiveBookmarkedCompletion_shouldContinue___block_invoke_cold_1(v5, v6);
  }

  (*(*(a1 + 32) + 16))();
}

- (id)newBookmark
{
  v3 = [(BPSDrivableSink *)self status];
  v4 = [v3 subscription];
  v5 = [v4 conformsToProtocol:&unk_1F4871E60];

  if (v5)
  {
    v6 = [(BPSDrivableSink *)self status];
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

- (BPSDrivableSink)initWithReceiveCompletion:(id)a3 shouldContinue:(id)a4
{
  v6 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __60__BPSDrivableSink_initWithReceiveCompletion_shouldContinue___block_invoke;
  v10[3] = &unk_1E8320D98;
  v11 = v6;
  v7 = v6;
  v8 = [(BPSDrivableSink *)self initWithReceiveBookmarkCompletion:v10 shouldContinue:a4];

  return v8;
}

- (BPSDrivableSink)initWithReceiveBookmarkCompletion:(id)a3 shouldContinue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = BPSDrivableSink;
  v8 = [(BPSDrivableSink *)&v16 init];
  if (v8)
  {
    v9 = [v6 copy];
    receivedCompletion = v8->_receivedCompletion;
    v8->_receivedCompletion = v9;

    v11 = [v7 copy];
    shouldContinue = v8->_shouldContinue;
    v8->_shouldContinue = v11;

    *&v8->_lock._os_unfair_lock_opaque = 0;
    v8->_rlock.ourl_count = 0;
    v13 = [[BPSSubscriptionStatus alloc] initWithState:0 subscription:0];
    status = v8->_status;
    v8->_status = v13;
  }

  return v8;
}

- (void)receiveSubscription:(id)a3
{
  v8 = a3;
  os_unfair_lock_lock(&self->_lock);
  v4 = [(BPSDrivableSink *)self status];
  v5 = [v4 state];

  if (v5)
  {
    os_unfair_lock_unlock(&self->_lock);
    [v8 cancel];
  }

  else
  {
    v6 = [(BPSDrivableSink *)self status];
    [v6 setState:1];

    v7 = [(BPSDrivableSink *)self status];
    [v7 setSubscription:v8];

    os_unfair_lock_unlock(&self->_lock);
    [v8 requestDemand:1];
  }
}

- (void)receiveCompletion:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = __biome_log_for_category();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [BPSSink receiveCompletion:];
  }

  os_unfair_lock_lock(&v5->_lock);
  if (![(BPSDrivableSink *)v5 finished])
  {
    os_unfair_lock_unlock(&v5->_lock);
    v7 = [(BPSDrivableSink *)v5 receivedCompletion];
    (v7)[2](v7, v4, 0);

    os_unfair_lock_lock(&v5->_lock);
    [(BPSDrivableSink *)v5 setFinished:1];
    v8 = +[BPSSubscriptionStatus terminal];
    [(BPSDrivableSink *)v5 setStatus:v8];
  }

  os_unfair_lock_unlock(&v5->_lock);
}

- (int64_t)receiveInput:(id)a3
{
  v4 = self;
  v5 = a3;
  v6 = [(BPSDrivableSink *)v4 shouldContinue];
  v7 = (v6)[2](v6, v5);

  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v9 = [(BPSDrivableSink *)v4 receivedCompletion];
    v10 = +[BPSCompletion success];
    (v9)[2](v9, v10, 0);

    [(BPSDrivableSink *)v4 cancel];
    os_unfair_lock_lock(&v4->_lock);
    [(BPSDrivableSink *)v4 setFinished:1];
    os_unfair_lock_unlock(&v4->_lock);
    v8 = 0;
  }

  return v8;
}

- (void)cancel
{
  v2 = self;
  os_unfair_recursive_lock_lock_with_options();
  v3 = [(BPSDrivableSink *)v2 publisher];
  v4 = BPSPipelineSupportsPullBasedPublishers(v3);

  if (v4)
  {
    [(BPSDrivableSink *)v2 _cancel];
    os_unfair_recursive_lock_unlock();
  }

  else
  {
    os_unfair_recursive_lock_unlock();
    v5 = __biome_log_for_category();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [BPSSink cancel];
    }

    os_unfair_lock_lock(&v2->_lock);
    v6 = [(BPSDrivableSink *)v2 status];
    v7 = [v6 state];

    if (v7 == 1)
    {
      v8 = [(BPSDrivableSink *)v2 status];
      v9 = [v8 subscription];

      v10 = +[BPSSubscriptionStatus terminal];
      [(BPSDrivableSink *)v2 setStatus:v10];

      os_unfair_lock_unlock(&v2->_lock);
      [v9 cancel];
    }

    else
    {
      os_unfair_lock_unlock(&v2->_lock);
    }
  }
}

- (void)subscribeTo:(id)a3
{
  v4 = a3;
  os_unfair_recursive_lock_lock_with_options();
  [(BPSDrivableSink *)self setPublisher:v4];
  v5 = [(BPSDrivableSink *)self publisher];
  v6 = [v5 startWithSubscriber:self];

  if (v6)
  {
    [(BPSDrivableSink *)self completeWithError:v6];
  }

  else
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2050000000;
    v7 = getBMDSLSubscribeOnClass_softClass_0;
    v13 = getBMDSLSubscribeOnClass_softClass_0;
    if (!getBMDSLSubscribeOnClass_softClass_0)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __getBMDSLSubscribeOnClass_block_invoke_0;
      v9[3] = &unk_1E8320FB0;
      v9[4] = &v10;
      __getBMDSLSubscribeOnClass_block_invoke_0(v9);
      v7 = v11[3];
    }

    v8 = v7;
    _Block_object_dispose(&v10, 8);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(BPSDrivableSink *)self requestNextEvents];
    }
  }

  os_unfair_recursive_lock_unlock();
}

- (void)completeWithError:(id)a3
{
  v11 = a3;
  os_unfair_recursive_lock_lock_with_options();
  if (![(BPSDrivableSink *)self finished])
  {
    v4 = [(BPSDrivableSink *)self publisher];
    v5 = [v4 conformsToProtocol:&unk_1F4872E18];

    if (v5)
    {
      v6 = [(BPSDrivableSink *)self publisher];
      v7 = [v6 bookmarkNode];
    }

    else
    {
      v7 = 0;
    }

    v8 = [(BPSDrivableSink *)self publisher];
    [v8 reset];

    v9 = [(BPSDrivableSink *)self receivedCompletion];
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

    [(BPSDrivableSink *)self setFinished:1];
    [(BPSDrivableSink *)self setPublisher:0];
  }

  os_unfair_recursive_lock_unlock();
}

- (void)_cancel
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = [(BPSDrivableSink *)self publisher];
  [(BPSDrivableSink *)self _cancelPublisher:v3];

  [(BPSDrivableSink *)self completeWithError:0];

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

        [(BPSDrivableSink *)self _cancelPublisher:*(*(&v11 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __82__BPSDrivableSink_BMBookmark__initWithReceiveBookmarkedCompletion_shouldContinue___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_1C871B000, a2, OS_LOG_TYPE_DEBUG, "Creating bookmark:\n%@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end