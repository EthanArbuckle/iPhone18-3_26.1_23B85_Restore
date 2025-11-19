@interface BPSTimeWindowProducer
- (BPSTimeWindowProducer)initWithDateInterval:(id)a3 aggregator:(id)a4 identifier:(id)a5;
- (id)metadata;
- (int64_t)receiveInput:(id)a3;
- (void)cancel;
- (void)receiveCompletion:(id)a3;
- (void)receiveSubscription:(id)a3;
- (void)requestDemand:(int64_t)a3;
@end

@implementation BPSTimeWindowProducer

- (BPSTimeWindowProducer)initWithDateInterval:(id)a3 aggregator:(id)a4 identifier:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v21.receiver = self;
  v21.super_class = BPSTimeWindowProducer;
  v12 = [(BPSTimeWindowProducer *)&v21 init];
  v13 = v12;
  if (v12)
  {
    v12->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v12->_dateInterval, a3);
    v14 = [v10 accumulator];
    accumulator = v13->_accumulator;
    v13->_accumulator = v14;

    v16 = [v10 closure];
    closure = v13->_closure;
    v13->_closure = v16;

    objc_storeStrong(&v13->_identifier, a5);
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

- (void)receiveCompletion:(id)a3
{
  v10 = a3;
  v4 = self;
  os_unfair_lock_lock(&v4->_lock);
  if ([(BPSSubscriptionStatus *)v4->_status state]!= 1)
  {
    os_unfair_lock_unlock(&v4->_lock);
    goto LABEL_12;
  }

  [(BPSSubscriptionStatus *)v4->_status setState:2];
  v5 = [(BPSWindow *)v4 downstream];
  v6 = [v10 state];
  if (v6 == 1)
  {
    os_unfair_lock_unlock(&v4->_lock);
    v8 = [v10 error];
    v9 = [BPSCompletion failureWithError:v8];
    [v5 receiveCompletion:v9];

LABEL_10:
    goto LABEL_11;
  }

  if (!v6)
  {
    if (v4->_downstreamRequested)
    {
      v7 = v4->_accumulator;
      os_unfair_lock_unlock(&v4->_lock);
      [v5 receiveInput:v7];
    }

    else
    {
      os_unfair_lock_unlock(&v4->_lock);
    }

    v8 = +[BPSCompletion success];
    [v5 receiveCompletion:v8];
    goto LABEL_10;
  }

LABEL_11:

LABEL_12:
}

- (int64_t)receiveInput:(id)a3
{
  v4 = a3;
  v5 = self;
  os_unfair_lock_lock(&v5->_lock);
  if ([(BPSSubscriptionStatus *)v5->_status state]== 1)
  {
    closure = v5->_closure;
    v7 = v5->_accumulator;
    v8 = _Block_copy(closure);
    os_unfair_lock_unlock(&v5->_lock);
    v9 = v8[2](v8, v7, v4);

    os_unfair_lock_lock(&v5->_lock);
    accumulator = v5->_accumulator;
    v5->_accumulator = v9;

    os_unfair_lock_unlock(&v5->_lock);
  }

  else
  {
    os_unfair_lock_unlock(&v5->_lock);
  }

  return 0;
}

- (void)receiveSubscription:(id)a3
{
  v7 = a3;
  os_unfair_lock_lock(&self->_lock);
  v4 = [(BPSSubscriptionStatus *)self->_status state];
  if (v4 == 2 || v4 == 1)
  {
    os_unfair_lock_unlock(&self->_lock);
    [v7 cancel];
  }

  else if (!v4)
  {
    [(BPSSubscriptionStatus *)self->_status setState:1];
    [(BPSSubscriptionStatus *)self->_status setSubscription:v7];
    v5 = [(BPSWindow *)self downstream];
    v6 = self;
    os_unfair_lock_unlock(&self->_lock);
    [v5 receiveSubscription:v6];

    [v7 requestDemand:0x7FFFFFFFFFFFFFFFLL];
  }

  MEMORY[0x1EEE66BB8]();
}

- (void)cancel
{
  v3 = self;
  os_unfair_lock_lock(&v3->_lock);
  if ([(BPSSubscriptionStatus *)v3->_status state]== 1)
  {
    [(BPSSubscriptionStatus *)v3->_status setState:2];
    v2 = [(BPSSubscriptionStatus *)v3->_status subscription];
    os_unfair_lock_unlock(&v3->_lock);
    [v2 cancel];
  }

  else
  {
    os_unfair_lock_unlock(&v3->_lock);
  }
}

- (void)requestDemand:(int64_t)a3
{
  v5 = self;
  if (a3 <= 0)
  {
    [(BPSTimeWindowProducer *)a2 requestDemand:v5];
  }

  os_unfair_lock_lock(&v5->_lock);
  if ([(BPSSubscriptionStatus *)v5->_status state]== 1)
  {
    v5->_downstreamRequested = 1;
  }

  os_unfair_lock_unlock(&v5->_lock);
}

- (void)requestDemand:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"BPSTimeWindowProducer.m" lineNumber:207 description:@"Expecting demand to be greater than 0"];
}

@end