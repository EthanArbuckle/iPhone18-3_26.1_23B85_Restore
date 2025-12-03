@interface BPSSessionWindow
- (BPSSessionWindow)initWithDateInterval:(id)interval gap:(double)gap timestamp:(id)timestamp aggregator:(id)aggregator identifier:(id)identifier;
- (id)metadata;
- (int64_t)receiveInput:(id)input;
- (void)cancel;
- (void)receiveCompletion:(id)completion;
- (void)receiveSubscription:(id)subscription;
- (void)requestDemand:(int64_t)demand;
@end

@implementation BPSSessionWindow

- (BPSSessionWindow)initWithDateInterval:(id)interval gap:(double)gap timestamp:(id)timestamp aggregator:(id)aggregator identifier:(id)identifier
{
  intervalCopy = interval;
  timestampCopy = timestamp;
  aggregatorCopy = aggregator;
  identifierCopy = identifier;
  v28.receiver = self;
  v28.super_class = BPSSessionWindow;
  v17 = [(BPSSessionWindow *)&v28 init];
  v18 = v17;
  if (v17)
  {
    v17->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v17->_dateInterval, interval);
    v18->_gap = gap;
    v19 = [timestampCopy copy];
    timestamp = v18->_timestamp;
    v18->_timestamp = v19;

    accumulator = [aggregatorCopy accumulator];
    accumulator = v18->_accumulator;
    v18->_accumulator = accumulator;

    closure = [aggregatorCopy closure];
    closure = v18->_closure;
    v18->_closure = closure;

    objc_storeStrong(&v18->_identifier, identifier);
    v25 = [[BPSSubscriptionStatus alloc] initWithState:0 subscription:0];
    status = v18->_status;
    v18->_status = v25;

    v18->_downstreamRequested = 0;
  }

  return v18;
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
    v9 = _Block_copy(selfCopy->_timestamp);
    os_unfair_lock_unlock(&selfCopy->_lock);
    v10 = v9[2](v9, inputCopy);
    obj = v8[2](v8, v7, inputCopy);

    os_unfair_lock_lock(&selfCopy->_lock);
    if ([(NSDateInterval *)selfCopy->_dateInterval containsDate:v10])
    {
      v11 = obj;
      objc_storeStrong(&selfCopy->_accumulator, obj);
      [v10 timeIntervalSinceReferenceDate];
      v13 = v12;
      startDate = [(NSDateInterval *)selfCopy->_dateInterval startDate];
      [startDate timeIntervalSinceReferenceDate];
      v16 = v13 - v15 + selfCopy->_gap + -0.0001;

      v17 = objc_alloc(MEMORY[0x1E696AB80]);
      startDate2 = [(NSDateInterval *)selfCopy->_dateInterval startDate];
      v19 = [v17 initWithStartDate:startDate2 duration:v16];
      dateInterval = selfCopy->_dateInterval;
      selfCopy->_dateInterval = v19;

      os_unfair_lock_unlock(&selfCopy->_lock);
    }

    else
    {
      [(BPSSubscriptionStatus *)selfCopy->_status setState:2];
      downstream = [(BPSWindow *)selfCopy downstream];
      subscription = [(BPSSubscriptionStatus *)selfCopy->_status subscription];
      v23 = selfCopy->_accumulator;
      os_unfair_lock_unlock(&selfCopy->_lock);
      [downstream receiveInput:v23];

      v24 = +[BPSCompletion success];
      [downstream receiveCompletion:v24];

      [subscription cancel];
      v11 = obj;
    }
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
    [(BPSSessionWindow *)a2 requestDemand:selfCopy];
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
  [v4 handleFailureInMethod:a1 object:a2 file:@"BPSSessionWindowAssigner.m" lineNumber:196 description:@"Expecting demand to be greater than 0"];
}

@end