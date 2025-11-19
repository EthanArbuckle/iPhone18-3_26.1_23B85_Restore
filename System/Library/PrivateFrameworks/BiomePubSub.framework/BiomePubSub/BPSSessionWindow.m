@interface BPSSessionWindow
- (BPSSessionWindow)initWithDateInterval:(id)a3 gap:(double)a4 timestamp:(id)a5 aggregator:(id)a6 identifier:(id)a7;
- (id)metadata;
- (int64_t)receiveInput:(id)a3;
- (void)cancel;
- (void)receiveCompletion:(id)a3;
- (void)receiveSubscription:(id)a3;
- (void)requestDemand:(int64_t)a3;
@end

@implementation BPSSessionWindow

- (BPSSessionWindow)initWithDateInterval:(id)a3 gap:(double)a4 timestamp:(id)a5 aggregator:(id)a6 identifier:(id)a7
{
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v28.receiver = self;
  v28.super_class = BPSSessionWindow;
  v17 = [(BPSSessionWindow *)&v28 init];
  v18 = v17;
  if (v17)
  {
    v17->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v17->_dateInterval, a3);
    v18->_gap = a4;
    v19 = [v14 copy];
    timestamp = v18->_timestamp;
    v18->_timestamp = v19;

    v21 = [v15 accumulator];
    accumulator = v18->_accumulator;
    v18->_accumulator = v21;

    v23 = [v15 closure];
    closure = v18->_closure;
    v18->_closure = v23;

    objc_storeStrong(&v18->_identifier, a7);
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
    v9 = _Block_copy(v5->_timestamp);
    os_unfair_lock_unlock(&v5->_lock);
    v10 = v9[2](v9, v4);
    obj = v8[2](v8, v7, v4);

    os_unfair_lock_lock(&v5->_lock);
    if ([(NSDateInterval *)v5->_dateInterval containsDate:v10])
    {
      v11 = obj;
      objc_storeStrong(&v5->_accumulator, obj);
      [v10 timeIntervalSinceReferenceDate];
      v13 = v12;
      v14 = [(NSDateInterval *)v5->_dateInterval startDate];
      [v14 timeIntervalSinceReferenceDate];
      v16 = v13 - v15 + v5->_gap + -0.0001;

      v17 = objc_alloc(MEMORY[0x1E696AB80]);
      v18 = [(NSDateInterval *)v5->_dateInterval startDate];
      v19 = [v17 initWithStartDate:v18 duration:v16];
      dateInterval = v5->_dateInterval;
      v5->_dateInterval = v19;

      os_unfair_lock_unlock(&v5->_lock);
    }

    else
    {
      [(BPSSubscriptionStatus *)v5->_status setState:2];
      v21 = [(BPSWindow *)v5 downstream];
      v22 = [(BPSSubscriptionStatus *)v5->_status subscription];
      v23 = v5->_accumulator;
      os_unfair_lock_unlock(&v5->_lock);
      [v21 receiveInput:v23];

      v24 = +[BPSCompletion success];
      [v21 receiveCompletion:v24];

      [v22 cancel];
      v11 = obj;
    }
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
    [(BPSSessionWindow *)a2 requestDemand:v5];
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
  [v4 handleFailureInMethod:a1 object:a2 file:@"BPSSessionWindowAssigner.m" lineNumber:196 description:@"Expecting demand to be greater than 0"];
}

@end