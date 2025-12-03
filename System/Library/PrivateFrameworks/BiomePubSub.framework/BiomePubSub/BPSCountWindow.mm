@interface BPSCountWindow
- (BPSCountWindow)initWithCapacity:(unint64_t)capacity aggregator:(id)aggregator identifier:(id)identifier;
- (id)metadata;
- (int64_t)receiveInput:(id)input;
- (void)cancel;
- (void)receiveCompletion:(id)completion;
- (void)receiveSubscription:(id)subscription;
- (void)requestDemand:(int64_t)demand;
@end

@implementation BPSCountWindow

- (BPSCountWindow)initWithCapacity:(unint64_t)capacity aggregator:(id)aggregator identifier:(id)identifier
{
  aggregatorCopy = aggregator;
  identifierCopy = identifier;
  if (!capacity)
  {
    [BPSCountWindow initWithCapacity:a2 aggregator:self identifier:?];
  }

  v20.receiver = self;
  v20.super_class = BPSCountWindow;
  v11 = [(BPSCountWindow *)&v20 init];
  v12 = v11;
  if (v11)
  {
    v11->_lock._os_unfair_lock_opaque = 0;
    v11->_capacity = capacity;
    accumulator = [aggregatorCopy accumulator];
    accumulator = v12->_accumulator;
    v12->_accumulator = accumulator;

    closure = [aggregatorCopy closure];
    closure = v12->_closure;
    v12->_closure = closure;

    objc_storeStrong(&v12->_identifier, identifier);
    v12->_currentCount = 0;
    v17 = [[BPSSubscriptionStatus alloc] initWithState:0 subscription:0];
    status = v12->_status;
    v12->_status = v17;

    v12->_downstreamRequested = 0;
  }

  return v12;
}

- (id)metadata
{
  v2 = [[BPSCountWindowMetadata alloc] initWithCurrentCount:self->_currentCount];

  return v2;
}

- (void)receiveCompletion:(id)completion
{
  completionCopy = completion;
  selfCopy = self;
  os_unfair_lock_lock(&selfCopy->_lock);
  if ([(BPSSubscriptionStatus *)selfCopy->_status state]!= 1)
  {
    os_unfair_lock_unlock(&selfCopy->_lock);
    goto LABEL_12;
  }

  [(BPSSubscriptionStatus *)selfCopy->_status setState:2];
  downstream = [(BPSWindow *)selfCopy downstream];
  state = [completionCopy state];
  if (state == 1)
  {
    os_unfair_lock_unlock(&selfCopy->_lock);
    error = [completionCopy error];
    v9 = [BPSCompletion failureWithError:error];
    [downstream receiveCompletion:v9];

LABEL_10:
    goto LABEL_11;
  }

  if (!state)
  {
    if (selfCopy->_downstreamRequested)
    {
      v7 = selfCopy->_accumulator;
      os_unfair_lock_unlock(&selfCopy->_lock);
      [downstream receiveInput:v7];
    }

    else
    {
      os_unfair_lock_unlock(&selfCopy->_lock);
    }

    error = +[BPSCompletion success];
    [downstream receiveCompletion:error];
    goto LABEL_10;
  }

LABEL_11:

LABEL_12:
}

- (int64_t)receiveInput:(id)input
{
  inputCopy = input;
  selfCopy = self;
  os_unfair_lock_lock(&selfCopy->_lock);
  if ([(BPSSubscriptionStatus *)selfCopy->_status state]!= 1)
  {
    goto LABEL_7;
  }

  currentCount = selfCopy->_currentCount;
  if (currentCount < selfCopy->_capacity)
  {
    selfCopy->_currentCount = currentCount + 1;
    closure = selfCopy->_closure;
    v8 = selfCopy->_accumulator;
    v9 = _Block_copy(closure);
    os_unfair_lock_unlock(&selfCopy->_lock);
    v10 = v9[2](v9, v8, inputCopy);

    os_unfair_lock_lock(&selfCopy->_lock);
    accumulator = selfCopy->_accumulator;
    selfCopy->_accumulator = v10;
  }

  if (selfCopy->_downstreamRequested && selfCopy->_currentCount == selfCopy->_capacity)
  {
    [(BPSSubscriptionStatus *)selfCopy->_status setState:2];
    downstream = [(BPSWindow *)selfCopy downstream];
    subscription = [(BPSSubscriptionStatus *)selfCopy->_status subscription];
    v14 = selfCopy->_accumulator;
    os_unfair_lock_unlock(&selfCopy->_lock);
    [downstream receiveInput:v14];

    v15 = +[BPSCompletion success];
    [downstream receiveCompletion:v15];

    [subscription cancel];
  }

  else
  {
LABEL_7:
    os_unfair_lock_unlock(&selfCopy->_lock);
  }

  return 0;
}

- (void)receiveSubscription:(id)subscription
{
  subscriptionCopy = subscription;
  os_unfair_lock_lock(&self->_lock);
  state = [(BPSSubscriptionStatus *)self->_status state];
  if (state == 2 || state == 1)
  {
    os_unfair_lock_unlock(&self->_lock);
    [subscriptionCopy cancel];
  }

  else if (!state)
  {
    [(BPSSubscriptionStatus *)self->_status setState:1];
    [(BPSSubscriptionStatus *)self->_status setSubscription:subscriptionCopy];
    downstream = [(BPSWindow *)self downstream];
    capacity = self->_capacity;
    selfCopy = self;
    os_unfair_lock_unlock(&self->_lock);
    [downstream receiveSubscription:selfCopy];

    [subscriptionCopy requestDemand:capacity];
  }

  MEMORY[0x1EEE66BB8]();
}

- (void)cancel
{
  selfCopy = self;
  os_unfair_lock_lock(&selfCopy->_lock);
  if ([(BPSSubscriptionStatus *)selfCopy->_status state]== 1)
  {
    [(BPSSubscriptionStatus *)selfCopy->_status setState:2];
    subscription = [(BPSSubscriptionStatus *)selfCopy->_status subscription];
    os_unfair_lock_unlock(&selfCopy->_lock);
    [subscription cancel];
  }

  else
  {
    os_unfair_lock_unlock(&selfCopy->_lock);
  }
}

- (void)requestDemand:(int64_t)demand
{
  selfCopy = self;
  if (demand <= 0)
  {
    [(BPSCountWindow *)a2 requestDemand:selfCopy];
  }

  os_unfair_lock_lock(&selfCopy->_lock);
  if ([(BPSSubscriptionStatus *)selfCopy->_status state]== 1 && (selfCopy->_downstreamRequested = 1, selfCopy->_currentCount == selfCopy->_capacity))
  {
    [(BPSSubscriptionStatus *)selfCopy->_status setState:2];
    downstream = [(BPSWindow *)selfCopy downstream];
    status = selfCopy->_status;
    v7 = selfCopy->_accumulator;
    subscription = [(BPSSubscriptionStatus *)status subscription];
    os_unfair_lock_unlock(&selfCopy->_lock);
    [downstream receiveInput:v7];

    v9 = +[BPSCompletion success];
    [downstream receiveCompletion:v9];

    [subscription cancel];
  }

  else
  {
    os_unfair_lock_unlock(&selfCopy->_lock);
  }
}

- (void)initWithCapacity:(uint64_t)a1 aggregator:(uint64_t)a2 identifier:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"BPSCountWindowAssigner.m" lineNumber:40 description:@"Expecting capacity to be greater than 0"];
}

- (void)requestDemand:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"BPSCountWindowAssigner.m" lineNumber:192 description:@"Expecting demand to be greater than 0"];
}

@end