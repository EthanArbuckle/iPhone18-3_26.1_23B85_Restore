@interface BPSTimeWindowProducer
- (BPSTimeWindowProducer)initWithDateInterval:(id)interval aggregator:(id)aggregator identifier:(id)identifier;
- (id)metadata;
- (int64_t)receiveInput:(id)input;
- (void)cancel;
- (void)receiveCompletion:(id)completion;
- (void)receiveSubscription:(id)subscription;
- (void)requestDemand:(int64_t)demand;
@end

@implementation BPSTimeWindowProducer

- (BPSTimeWindowProducer)initWithDateInterval:(id)interval aggregator:(id)aggregator identifier:(id)identifier
{
  intervalCopy = interval;
  aggregatorCopy = aggregator;
  identifierCopy = identifier;
  v21.receiver = self;
  v21.super_class = BPSTimeWindowProducer;
  v12 = [(BPSTimeWindowProducer *)&v21 init];
  v13 = v12;
  if (v12)
  {
    v12->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v12->_dateInterval, interval);
    accumulator = [aggregatorCopy accumulator];
    accumulator = v13->_accumulator;
    v13->_accumulator = accumulator;

    closure = [aggregatorCopy closure];
    closure = v13->_closure;
    v13->_closure = closure;

    objc_storeStrong(&v13->_identifier, identifier);
    v18 = [[BPSSubscriptionStatus alloc] initWithState:0 subscription:0];
    status = v13->_status;
    v13->_status = v18;

    v13->_downstreamRequested = 0;
  }

  return v13;
}

- (id)metadata
{
  v2 = [[BPSTimeWindowMetadata alloc] initWithDateInterval:self->_dateInterval];

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
  if ([(BPSSubscriptionStatus *)selfCopy->_status state]== 1)
  {
    closure = selfCopy->_closure;
    v7 = selfCopy->_accumulator;
    v8 = _Block_copy(closure);
    os_unfair_lock_unlock(&selfCopy->_lock);
    v9 = v8[2](v8, v7, inputCopy);

    os_unfair_lock_lock(&selfCopy->_lock);
    accumulator = selfCopy->_accumulator;
    selfCopy->_accumulator = v9;

    os_unfair_lock_unlock(&selfCopy->_lock);
  }

  else
  {
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
    selfCopy = self;
    os_unfair_lock_unlock(&self->_lock);
    [downstream receiveSubscription:selfCopy];

    [subscriptionCopy requestDemand:0x7FFFFFFFFFFFFFFFLL];
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
    [(BPSTimeWindowProducer *)a2 requestDemand:selfCopy];
  }

  os_unfair_lock_lock(&selfCopy->_lock);
  if ([(BPSSubscriptionStatus *)selfCopy->_status state]== 1)
  {
    selfCopy->_downstreamRequested = 1;
  }

  os_unfair_lock_unlock(&selfCopy->_lock);
}

- (void)requestDemand:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"BPSTimeWindowProducer.m" lineNumber:207 description:@"Expecting demand to be greater than 0"];
}

@end