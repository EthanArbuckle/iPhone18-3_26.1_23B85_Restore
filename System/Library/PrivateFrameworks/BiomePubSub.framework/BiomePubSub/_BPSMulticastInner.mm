@interface _BPSMulticastInner
- (_BPSMulticastInner)initWithDownstream:(id)downstream;
- (id)upstreamSubscriptions;
- (int64_t)receiveInput:(id)input;
- (void)cancel;
- (void)dealloc;
- (void)receiveCompletion:(id)completion;
- (void)receiveSubscription:(id)subscription;
- (void)requestDemand:(int64_t)demand;
@end

@implementation _BPSMulticastInner

- (_BPSMulticastInner)initWithDownstream:(id)downstream
{
  downstreamCopy = downstream;
  v11.receiver = self;
  v11.super_class = _BPSMulticastInner;
  v6 = [(_BPSMulticastInner *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_downstream, downstream);
    v7->_lock._os_unfair_lock_opaque = 0;
    v8 = [[BPSSubscriptionStatus alloc] initWithState:0 subscription:0];
    status = v7->_status;
    v7->_status = v8;
  }

  return v7;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = _BPSMulticastInner;
  [(_BPSMulticastInner *)&v2 dealloc];
}

- (void)receiveSubscription:(id)subscription
{
  subscriptionCopy = subscription;
  os_unfair_lock_lock(&self->_lock);
  if ([(BPSSubscriptionStatus *)self->_status state])
  {
    os_unfair_lock_unlock(&self->_lock);
    [(BPSSubscriber *)subscriptionCopy cancel];
  }

  else
  {
    [(BPSSubscriptionStatus *)self->_status setState:1];
    [(BPSSubscriptionStatus *)self->_status setSubscription:subscriptionCopy];

    downstream = self->_downstream;
    selfCopy = self;
    subscriptionCopy = downstream;
    os_unfair_lock_unlock(&self->_lock);
    [(BPSSubscriber *)subscriptionCopy receiveSubscription:selfCopy];
  }
}

- (int64_t)receiveInput:(id)input
{
  inputCopy = input;
  selfCopy = self;
  v6 = __biome_log_for_category();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(_BPSMulticastInner *)inputCopy receiveInput:v6];
  }

  os_unfair_lock_lock(&selfCopy->_lock);
  state = [(BPSSubscriptionStatus *)selfCopy->_status state];
  os_unfair_lock_unlock(&selfCopy->_lock);
  if (state == 1)
  {
    downstream = [(_BPSMulticastInner *)selfCopy downstream];
    v9 = [downstream receiveInput:inputCopy];

    if (v9 > 0)
    {
      subscription = [(BPSSubscriptionStatus *)selfCopy->_status subscription];
      [subscription requestDemand:v9];
    }
  }

  return 0;
}

- (void)requestDemand:(int64_t)demand
{
  selfCopy = self;
  if (demand <= 0)
  {
    [(_BPSMulticastInner *)a2 requestDemand:selfCopy];
  }

  os_unfair_lock_lock(&selfCopy->_lock);
  if ([(BPSSubscriptionStatus *)selfCopy->_status state]== 1)
  {
    subscription = [(BPSSubscriptionStatus *)selfCopy->_status subscription];
    os_unfair_lock_unlock(&selfCopy->_lock);
    [subscription requestDemand:demand];
  }

  else
  {
    os_unfair_lock_unlock(&selfCopy->_lock);
  }
}

- (void)receiveCompletion:(id)completion
{
  v13 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  selfCopy = self;
  v6 = __biome_log_for_category();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v11 = 138412290;
    v12 = objc_opt_class();
    v7 = v12;
    _os_log_impl(&dword_1C871B000, v6, OS_LOG_TYPE_INFO, "%@ - completion", &v11, 0xCu);
  }

  os_unfair_lock_lock(&selfCopy->_lock);
  state = [(BPSSubscriptionStatus *)selfCopy->_status state];
  os_unfair_lock_unlock(&selfCopy->_lock);
  if (state == 1)
  {
    downstream = [(_BPSMulticastInner *)selfCopy downstream];
    [downstream receiveCompletion:completionCopy];

    os_unfair_lock_lock(&selfCopy->_lock);
    [(BPSSubscriptionStatus *)selfCopy->_status setState:2];
    os_unfair_lock_unlock(&selfCopy->_lock);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)cancel
{
  selfCopy = self;
  os_unfair_lock_lock(&selfCopy->_lock);
  if ([(BPSSubscriptionStatus *)selfCopy->_status state]== 1)
  {
    [(BPSSubscriptionStatus *)selfCopy->_status setState:2];
    os_unfair_lock_unlock(&selfCopy->_lock);
    subscription = [(BPSSubscriptionStatus *)selfCopy->_status subscription];
    [subscription cancel];
  }

  else
  {
    os_unfair_lock_unlock(&selfCopy->_lock);
  }
}

- (id)upstreamSubscriptions
{
  v7[1] = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  if ([(BPSSubscriptionStatus *)self->_status state]== 1)
  {
    subscription = [(BPSSubscriptionStatus *)self->_status subscription];
    os_unfair_lock_unlock(&self->_lock);
    v7[0] = subscription;
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

- (void)receiveInput:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_1C871B000, a2, OS_LOG_TYPE_DEBUG, "receiving: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)requestDemand:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"BPSMulticast.m" lineNumber:86 description:@"Expecting demand to be greater than 0"];
}

@end