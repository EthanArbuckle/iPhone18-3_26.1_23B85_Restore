@interface _BPSHandleEventsInner
- (_BPSHandleEventsInner)initWithDownstream:(id)downstream handleEvents:(id)events;
- (id)upstreamSubscriptions;
- (int64_t)receiveInput:(id)input;
- (void)cancel;
- (void)receiveCompletion:(id)completion;
- (void)receiveSubscription:(id)subscription;
- (void)requestDemand:(int64_t)demand;
- (void)upstreamSubscriptions;
@end

@implementation _BPSHandleEventsInner

- (_BPSHandleEventsInner)initWithDownstream:(id)downstream handleEvents:(id)events
{
  downstreamCopy = downstream;
  eventsCopy = events;
  v29.receiver = self;
  v29.super_class = _BPSHandleEventsInner;
  v9 = [(_BPSHandleEventsInner *)&v29 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_downstream, downstream);
    receiveSubscription = [eventsCopy receiveSubscription];
    v12 = [receiveSubscription copy];
    receiveSubscription = v10->_receiveSubscription;
    v10->_receiveSubscription = v12;

    receiveOutput = [eventsCopy receiveOutput];
    v15 = [receiveOutput copy];
    receiveOutput = v10->_receiveOutput;
    v10->_receiveOutput = v15;

    receiveCompletion = [eventsCopy receiveCompletion];
    v18 = [receiveCompletion copy];
    receiveCompletion = v10->_receiveCompletion;
    v10->_receiveCompletion = v18;

    receiveCancel = [eventsCopy receiveCancel];
    v21 = [receiveCancel copy];
    receiveCancel = v10->_receiveCancel;
    v10->_receiveCancel = v21;

    receiveRequest = [eventsCopy receiveRequest];
    v24 = [receiveRequest copy];
    receiveRequest = v10->_receiveRequest;
    v10->_receiveRequest = v24;

    v26 = [[BPSSubscriptionStatus alloc] initWithState:0 subscription:0];
    status = v10->_status;
    v10->_status = v26;

    v10->_lock._os_unfair_lock_opaque = 0;
  }

  return v10;
}

- (void)cancel
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = 138412290;
  v5 = objc_opt_class();
  _os_log_debug_impl(&dword_1C871B000, a2, OS_LOG_TYPE_DEBUG, "%@ - cancel", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)receiveCompletion:(id)completion
{
  v18 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  selfCopy = self;
  v6 = __biome_log_for_category();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v16 = 138412290;
    v17 = objc_opt_class();
    _os_log_impl(&dword_1C871B000, v6, OS_LOG_TYPE_INFO, "%@ - completion", &v16, 0xCu);
  }

  os_unfair_lock_lock(&selfCopy->_lock);
  v7 = _Block_copy(selfCopy->_receiveCompletion);
  if (v7)
  {
    os_unfair_lock_unlock(&selfCopy->_lock);
    v7[2](v7, completionCopy);
    os_unfair_lock_lock(&selfCopy->_lock);
  }

  receiveSubscription = selfCopy->_receiveSubscription;
  selfCopy->_receiveSubscription = 0;

  receiveOutput = selfCopy->_receiveOutput;
  selfCopy->_receiveOutput = 0;

  receiveCompletion = selfCopy->_receiveCompletion;
  selfCopy->_receiveCompletion = 0;

  receiveCancel = selfCopy->_receiveCancel;
  selfCopy->_receiveCancel = 0;

  receiveRequest = selfCopy->_receiveRequest;
  selfCopy->_receiveRequest = 0;

  os_unfair_lock_unlock(&selfCopy->_lock);
  [(BPSSubscriber *)selfCopy->_downstream receiveCompletion:completionCopy];
  os_unfair_lock_lock(&selfCopy->_lock);
  v13 = +[BPSSubscriptionStatus terminal];
  status = selfCopy->_status;
  selfCopy->_status = v13;

  os_unfair_lock_unlock(&selfCopy->_lock);
  v15 = *MEMORY[0x1E69E9840];
}

- (int64_t)receiveInput:(id)input
{
  selfCopy = self;
  inputCopy = input;
  os_unfair_lock_lock(&selfCopy->_lock);
  v6 = _Block_copy(selfCopy->_receiveOutput);
  os_unfair_lock_unlock(&selfCopy->_lock);
  if (v6)
  {
    v6[2](v6, inputCopy);
  }

  v7 = [(BPSSubscriber *)selfCopy->_downstream receiveInput:inputCopy];

  v8 = _Block_copy(selfCopy->_receiveRequest);
  v9 = v8;
  if (v7 >= 1 && v8 != 0)
  {
    (*(v8 + 2))(v8, v7);
  }

  return v7;
}

- (void)receiveSubscription:(id)subscription
{
  subscriptionCopy = subscription;
  os_unfair_lock_lock(&self->_lock);
  v4 = _Block_copy(self->_receiveSubscription);
  if (v4)
  {
    os_unfair_lock_unlock(&self->_lock);
    v4[2](v4, subscriptionCopy);
    os_unfair_lock_lock(&self->_lock);
  }

  if ([(BPSSubscriptionStatus *)self->_status state])
  {
    os_unfair_lock_unlock(&self->_lock);
    [subscriptionCopy cancel];
  }

  else
  {
    [(BPSSubscriptionStatus *)self->_status setState:1];
    [(BPSSubscriptionStatus *)self->_status setSubscription:subscriptionCopy];
    os_unfair_lock_unlock(&self->_lock);
    [(BPSSubscriber *)self->_downstream receiveSubscription:self];
  }
}

- (void)requestDemand:(int64_t)demand
{
  selfCopy = self;
  os_unfair_lock_lock(&selfCopy->_lock);
  v4 = _Block_copy(selfCopy->_receiveRequest);
  if (v4)
  {
    os_unfair_lock_unlock(&selfCopy->_lock);
    v4[2](v4, demand);
    os_unfair_lock_lock(&selfCopy->_lock);
  }

  subscription = [(BPSSubscriptionStatus *)selfCopy->_status subscription];
  state = [(BPSSubscriptionStatus *)selfCopy->_status state];
  os_unfair_lock_unlock(&selfCopy->_lock);
  if (state == 1)
  {
    [subscription requestDemand:demand];
  }
}

- (id)upstreamSubscriptions
{
  v8[1] = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  subscription = [(BPSSubscriptionStatus *)self->_status subscription];
  os_unfair_lock_unlock(&self->_lock);
  if (subscription)
  {
    v8[0] = subscription;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  }

  else
  {
    v5 = __biome_log_for_category();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(_BPSHandleEventsInner *)self upstreamSubscriptions];
    }

    v4 = MEMORY[0x1E695E0F0];
  }

  v6 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)upstreamSubscriptions
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = 138412290;
  v5 = objc_opt_class();
  _os_log_error_impl(&dword_1C871B000, a2, OS_LOG_TYPE_ERROR, "%@ - upstreamSubscriptions are nil", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

@end