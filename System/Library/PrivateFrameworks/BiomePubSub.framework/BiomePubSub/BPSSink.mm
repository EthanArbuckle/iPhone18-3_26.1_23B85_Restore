@interface BPSSink
- (BPSSink)initWithReceiveBookmarkCompletion:(id)completion receiveInput:(id)input;
- (BPSSink)initWithReceiveBookmarkedCompletion:(id)completion receiveInput:(id)input;
- (BPSSink)initWithReceiveCompletion:(id)completion receiveInput:(id)input;
- (id)newBookmark;
- (int64_t)receiveInput:(id)input;
- (void)_cancel;
- (void)_cancelPublisher:(id)publisher;
- (void)cancel;
- (void)completeWithError:(id)error;
- (void)receiveCompletion:(id)completion;
- (void)receiveSubscription:(id)subscription;
- (void)requestNextEvents;
- (void)subscribeTo:(id)to;
@end

@implementation BPSSink

- (void)requestNextEvents
{
  os_unfair_recursive_lock_lock_with_options();
  if (![(BPSSink *)self finished])
  {
    publisher = [(BPSSink *)self publisher];
    nextEvent = [publisher nextEvent];

    if (nextEvent)
    {
      do
      {
        v5 = objc_autoreleasePoolPush();
        receivedValue = [(BPSSink *)self receivedValue];
        (receivedValue)[2](receivedValue, nextEvent);

        publisher2 = [(BPSSink *)self publisher];
        nextEvent2 = [publisher2 nextEvent];

        objc_autoreleasePoolPop(v5);
        nextEvent = nextEvent2;
      }

      while (nextEvent2);
    }

    publisher3 = [(BPSSink *)self publisher];
    completed = [publisher3 completed];

    if (completed)
    {
      [(BPSSink *)self completeWithError:0];
    }
  }

  os_unfair_recursive_lock_unlock();
}

- (BPSSink)initWithReceiveBookmarkedCompletion:(id)completion receiveInput:(id)input
{
  completionCopy = completion;
  inputCopy = input;
  objc_initWeak(&location, self);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __72__BPSSink_BMBookmark__initWithReceiveBookmarkedCompletion_receiveInput___block_invoke;
  v11[3] = &unk_1E8320C80;
  objc_copyWeak(&v13, &location);
  v8 = completionCopy;
  v12 = v8;
  v9 = [(BPSSink *)self initWithReceiveCompletion:v11 receiveInput:inputCopy];

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
  status = [(BPSSink *)self status];
  subscription = [status subscription];
  v5 = [subscription conformsToProtocol:&unk_1F4871E60];

  if (v5)
  {
    status2 = [(BPSSink *)self status];
    subscription2 = [status2 subscription];

    newBookmark = [subscription2 newBookmark];
    v9 = __biome_log_for_category();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __82__BPSDrivableSink_BMBookmark__initWithReceiveBookmarkedCompletion_shouldContinue___block_invoke_cold_1(newBookmark, v9);
    }
  }

  else
  {
    subscription2 = __biome_log_for_category();
    if (os_log_type_enabled(subscription2, OS_LOG_TYPE_ERROR))
    {
      [(BPSDrivableSink(BMBookmark) *)self newBookmark];
    }

    newBookmark = 0;
  }

  return newBookmark;
}

- (BPSSink)initWithReceiveCompletion:(id)completion receiveInput:(id)input
{
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __50__BPSSink_initWithReceiveCompletion_receiveInput___block_invoke;
  v10[3] = &unk_1E8320D98;
  v11 = completionCopy;
  v7 = completionCopy;
  v8 = [(BPSSink *)self initWithReceiveBookmarkCompletion:v10 receiveInput:input];

  return v8;
}

- (BPSSink)initWithReceiveBookmarkCompletion:(id)completion receiveInput:(id)input
{
  completionCopy = completion;
  inputCopy = input;
  v17.receiver = self;
  v17.super_class = BPSSink;
  v8 = [(BPSSink *)&v17 init];
  v9 = v8;
  if (v8)
  {
    v8->_demand = 0x7FFFFFFFFFFFFFFFLL;
    v10 = [completionCopy copy];
    receivedCompletion = v9->_receivedCompletion;
    v9->_receivedCompletion = v10;

    v12 = [inputCopy copy];
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

- (void)receiveSubscription:(id)subscription
{
  subscriptionCopy = subscription;
  os_unfair_lock_lock(&self->_lock);
  status = [(BPSSink *)self status];
  state = [status state];

  if (state)
  {
    os_unfair_lock_unlock(&self->_lock);
    [subscriptionCopy cancel];
  }

  else
  {
    status2 = [(BPSSink *)self status];
    [status2 setState:1];

    status3 = [(BPSSink *)self status];
    [status3 setSubscription:subscriptionCopy];

    os_unfair_lock_unlock(&self->_lock);
    [subscriptionCopy requestDemand:{-[BPSSink demand](self, "demand")}];
  }
}

- (void)receiveCompletion:(id)completion
{
  selfCopy = self;
  completionCopy = completion;
  v6 = __biome_log_for_category();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [BPSSink receiveCompletion:];
  }

  receivedCompletion = [(BPSSink *)selfCopy receivedCompletion];
  (receivedCompletion)[2](receivedCompletion, completionCopy, 0);

  os_unfair_lock_lock(&selfCopy->_lock);
  v8 = +[BPSSubscriptionStatus terminal];
  [(BPSSink *)selfCopy setStatus:v8];

  os_unfair_lock_unlock(&selfCopy->_lock);
}

- (int64_t)receiveInput:(id)input
{
  selfCopy = self;
  inputCopy = input;
  receivedValue = [(BPSSink *)selfCopy receivedValue];
  (receivedValue)[2](receivedValue, inputCopy);

  return 0;
}

- (void)cancel
{
  v7 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  OUTLINED_FUNCTION_0_6(&dword_1C871B000, v0, v1, "%@ - cancel", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)subscribeTo:(id)to
{
  toCopy = to;
  os_unfair_recursive_lock_lock_with_options();
  [(BPSSink *)self setPublisher:toCopy];
  publisher = [(BPSSink *)self publisher];
  v6 = [publisher startWithSubscriber:self];

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

- (void)completeWithError:(id)error
{
  errorCopy = error;
  os_unfair_recursive_lock_lock_with_options();
  if (![(BPSSink *)self finished])
  {
    publisher = [(BPSSink *)self publisher];
    v5 = [publisher conformsToProtocol:&unk_1F4872E18];

    if (v5)
    {
      publisher2 = [(BPSSink *)self publisher];
      bookmarkNode = [publisher2 bookmarkNode];
    }

    else
    {
      bookmarkNode = 0;
    }

    publisher3 = [(BPSSink *)self publisher];
    [publisher3 reset];

    receivedCompletion = [(BPSSink *)self receivedCompletion];
    if (errorCopy)
    {
      [BPSCompletion failureWithError:?];
    }

    else
    {
      +[BPSCompletion success];
    }
    v10 = ;
    (receivedCompletion)[2](receivedCompletion, v10, bookmarkNode);

    [(BPSSink *)self setFinished:1];
    [(BPSSink *)self setPublisher:0];
  }

  os_unfair_recursive_lock_unlock();
}

- (void)_cancel
{
  os_unfair_recursive_lock_lock_with_options();
  publisher = [(BPSSink *)self publisher];
  [(BPSSink *)self _cancelPublisher:publisher];

  [(BPSSink *)self completeWithError:0];

  os_unfair_recursive_lock_unlock();
}

- (void)_cancelPublisher:(id)publisher
{
  v16 = *MEMORY[0x1E69E9840];
  publisherCopy = publisher;
  if (objc_opt_respondsToSelector())
  {
    [publisherCopy performSelector:sel_cancel];
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  upstreamPublishers = [publisherCopy upstreamPublishers];
  v6 = [upstreamPublishers countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(upstreamPublishers);
        }

        [(BPSSink *)self _cancelPublisher:*(*(&v11 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [upstreamPublishers countByEnumeratingWithState:&v11 objects:v15 count:16];
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