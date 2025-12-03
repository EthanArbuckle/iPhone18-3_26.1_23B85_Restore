@interface BPSDrivableSink
- (BPSDrivableSink)initWithReceiveBookmarkCompletion:(id)completion shouldContinue:(id)continue;
- (BPSDrivableSink)initWithReceiveBookmarkedCompletion:(id)completion shouldContinue:(id)continue;
- (BPSDrivableSink)initWithReceiveCompletion:(id)completion shouldContinue:(id)continue;
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

@implementation BPSDrivableSink

- (void)requestNextEvents
{
  os_unfair_recursive_lock_lock_with_options();
  if (![(BPSDrivableSink *)self finished])
  {
    publisher = [(BPSDrivableSink *)self publisher];
    nextEvent = [publisher nextEvent];

    if (nextEvent)
    {
      while (1)
      {
        v5 = objc_autoreleasePoolPush();
        shouldContinue = [(BPSDrivableSink *)self shouldContinue];
        v7 = (shouldContinue)[2](shouldContinue, nextEvent);

        if (!v7)
        {
          break;
        }

        publisher2 = [(BPSDrivableSink *)self publisher];
        nextEvent2 = [publisher2 nextEvent];

        objc_autoreleasePoolPop(v5);
        nextEvent = nextEvent2;
        if (!nextEvent2)
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
      publisher3 = [(BPSDrivableSink *)self publisher];
      completed = [publisher3 completed];

      if (completed)
      {
        [(BPSDrivableSink *)self completeWithError:0];
      }
    }
  }

  os_unfair_recursive_lock_unlock();
}

- (BPSDrivableSink)initWithReceiveBookmarkedCompletion:(id)completion shouldContinue:(id)continue
{
  completionCopy = completion;
  continueCopy = continue;
  objc_initWeak(&location, self);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __82__BPSDrivableSink_BMBookmark__initWithReceiveBookmarkedCompletion_shouldContinue___block_invoke;
  v11[3] = &unk_1E8320C80;
  objc_copyWeak(&v13, &location);
  v8 = completionCopy;
  v12 = v8;
  v9 = [(BPSDrivableSink *)self initWithReceiveCompletion:v11 shouldContinue:continueCopy];

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
  status = [(BPSDrivableSink *)self status];
  subscription = [status subscription];
  v5 = [subscription conformsToProtocol:&unk_1F4871E60];

  if (v5)
  {
    status2 = [(BPSDrivableSink *)self status];
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

- (BPSDrivableSink)initWithReceiveCompletion:(id)completion shouldContinue:(id)continue
{
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __60__BPSDrivableSink_initWithReceiveCompletion_shouldContinue___block_invoke;
  v10[3] = &unk_1E8320D98;
  v11 = completionCopy;
  v7 = completionCopy;
  v8 = [(BPSDrivableSink *)self initWithReceiveBookmarkCompletion:v10 shouldContinue:continue];

  return v8;
}

- (BPSDrivableSink)initWithReceiveBookmarkCompletion:(id)completion shouldContinue:(id)continue
{
  completionCopy = completion;
  continueCopy = continue;
  v16.receiver = self;
  v16.super_class = BPSDrivableSink;
  v8 = [(BPSDrivableSink *)&v16 init];
  if (v8)
  {
    v9 = [completionCopy copy];
    receivedCompletion = v8->_receivedCompletion;
    v8->_receivedCompletion = v9;

    v11 = [continueCopy copy];
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

- (void)receiveSubscription:(id)subscription
{
  subscriptionCopy = subscription;
  os_unfair_lock_lock(&self->_lock);
  status = [(BPSDrivableSink *)self status];
  state = [status state];

  if (state)
  {
    os_unfair_lock_unlock(&self->_lock);
    [subscriptionCopy cancel];
  }

  else
  {
    status2 = [(BPSDrivableSink *)self status];
    [status2 setState:1];

    status3 = [(BPSDrivableSink *)self status];
    [status3 setSubscription:subscriptionCopy];

    os_unfair_lock_unlock(&self->_lock);
    [subscriptionCopy requestDemand:1];
  }
}

- (void)receiveCompletion:(id)completion
{
  completionCopy = completion;
  selfCopy = self;
  v6 = __biome_log_for_category();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [BPSSink receiveCompletion:];
  }

  os_unfair_lock_lock(&selfCopy->_lock);
  if (![(BPSDrivableSink *)selfCopy finished])
  {
    os_unfair_lock_unlock(&selfCopy->_lock);
    receivedCompletion = [(BPSDrivableSink *)selfCopy receivedCompletion];
    (receivedCompletion)[2](receivedCompletion, completionCopy, 0);

    os_unfair_lock_lock(&selfCopy->_lock);
    [(BPSDrivableSink *)selfCopy setFinished:1];
    v8 = +[BPSSubscriptionStatus terminal];
    [(BPSDrivableSink *)selfCopy setStatus:v8];
  }

  os_unfair_lock_unlock(&selfCopy->_lock);
}

- (int64_t)receiveInput:(id)input
{
  selfCopy = self;
  inputCopy = input;
  shouldContinue = [(BPSDrivableSink *)selfCopy shouldContinue];
  v7 = (shouldContinue)[2](shouldContinue, inputCopy);

  if (v7)
  {
    v8 = 1;
  }

  else
  {
    receivedCompletion = [(BPSDrivableSink *)selfCopy receivedCompletion];
    v10 = +[BPSCompletion success];
    (receivedCompletion)[2](receivedCompletion, v10, 0);

    [(BPSDrivableSink *)selfCopy cancel];
    os_unfair_lock_lock(&selfCopy->_lock);
    [(BPSDrivableSink *)selfCopy setFinished:1];
    os_unfair_lock_unlock(&selfCopy->_lock);
    v8 = 0;
  }

  return v8;
}

- (void)cancel
{
  selfCopy = self;
  os_unfair_recursive_lock_lock_with_options();
  publisher = [(BPSDrivableSink *)selfCopy publisher];
  v4 = BPSPipelineSupportsPullBasedPublishers(publisher);

  if (v4)
  {
    [(BPSDrivableSink *)selfCopy _cancel];
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

    os_unfair_lock_lock(&selfCopy->_lock);
    status = [(BPSDrivableSink *)selfCopy status];
    state = [status state];

    if (state == 1)
    {
      status2 = [(BPSDrivableSink *)selfCopy status];
      subscription = [status2 subscription];

      v10 = +[BPSSubscriptionStatus terminal];
      [(BPSDrivableSink *)selfCopy setStatus:v10];

      os_unfair_lock_unlock(&selfCopy->_lock);
      [subscription cancel];
    }

    else
    {
      os_unfair_lock_unlock(&selfCopy->_lock);
    }
  }
}

- (void)subscribeTo:(id)to
{
  toCopy = to;
  os_unfair_recursive_lock_lock_with_options();
  [(BPSDrivableSink *)self setPublisher:toCopy];
  publisher = [(BPSDrivableSink *)self publisher];
  v6 = [publisher startWithSubscriber:self];

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

- (void)completeWithError:(id)error
{
  errorCopy = error;
  os_unfair_recursive_lock_lock_with_options();
  if (![(BPSDrivableSink *)self finished])
  {
    publisher = [(BPSDrivableSink *)self publisher];
    v5 = [publisher conformsToProtocol:&unk_1F4872E18];

    if (v5)
    {
      publisher2 = [(BPSDrivableSink *)self publisher];
      bookmarkNode = [publisher2 bookmarkNode];
    }

    else
    {
      bookmarkNode = 0;
    }

    publisher3 = [(BPSDrivableSink *)self publisher];
    [publisher3 reset];

    receivedCompletion = [(BPSDrivableSink *)self receivedCompletion];
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

    [(BPSDrivableSink *)self setFinished:1];
    [(BPSDrivableSink *)self setPublisher:0];
  }

  os_unfair_recursive_lock_unlock();
}

- (void)_cancel
{
  os_unfair_recursive_lock_lock_with_options();
  publisher = [(BPSDrivableSink *)self publisher];
  [(BPSDrivableSink *)self _cancelPublisher:publisher];

  [(BPSDrivableSink *)self completeWithError:0];

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

        [(BPSDrivableSink *)self _cancelPublisher:*(*(&v11 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [upstreamPublishers countByEnumeratingWithState:&v11 objects:v15 count:16];
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