@interface BPSCountWindow
- (BPSCountWindow)initWithCapacity:(unint64_t)a3 aggregator:(id)a4 identifier:(id)a5;
- (id)metadata;
- (int64_t)receiveInput:(id)a3;
- (void)cancel;
- (void)receiveCompletion:(id)a3;
- (void)receiveSubscription:(id)a3;
- (void)requestDemand:(int64_t)a3;
@end

@implementation BPSCountWindow

- (BPSCountWindow)initWithCapacity:(unint64_t)a3 aggregator:(id)a4 identifier:(id)a5
{
  v9 = a4;
  v10 = a5;
  if (!a3)
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
    v11->_capacity = a3;
    v13 = [v9 accumulator];
    accumulator = v12->_accumulator;
    v12->_accumulator = v13;

    v15 = [v9 closure];
    closure = v12->_closure;
    v12->_closure = v15;

    objc_storeStrong(&v12->_identifier, a5);
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
  if ([(BPSSubscriptionStatus *)v5->_status state]!= 1)
  {
    goto LABEL_7;
  }

  currentCount = v5->_currentCount;
  if (currentCount < v5->_capacity)
  {
    v5->_currentCount = currentCount + 1;
    closure = v5->_closure;
    v8 = v5->_accumulator;
    v9 = _Block_copy(closure);
    os_unfair_lock_unlock(&v5->_lock);
    v10 = v9[2](v9, v8, v4);

    os_unfair_lock_lock(&v5->_lock);
    accumulator = v5->_accumulator;
    v5->_accumulator = v10;
  }

  if (v5->_downstreamRequested && v5->_currentCount == v5->_capacity)
  {
    [(BPSSubscriptionStatus *)v5->_status setState:2];
    v12 = [(BPSWindow *)v5 downstream];
    v13 = [(BPSSubscriptionStatus *)v5->_status subscription];
    v14 = v5->_accumulator;
    os_unfair_lock_unlock(&v5->_lock);
    [v12 receiveInput:v14];

    v15 = +[BPSCompletion success];
    [v12 receiveCompletion:v15];

    [v13 cancel];
  }

  else
  {
LABEL_7:
    os_unfair_lock_unlock(&v5->_lock);
  }

  return 0;
}

- (void)receiveSubscription:(id)a3
{
  v8 = a3;
  os_unfair_lock_lock(&self->_lock);
  v4 = [(BPSSubscriptionStatus *)self->_status state];
  if (v4 == 2 || v4 == 1)
  {
    os_unfair_lock_unlock(&self->_lock);
    [v8 cancel];
  }

  else if (!v4)
  {
    [(BPSSubscriptionStatus *)self->_status setState:1];
    [(BPSSubscriptionStatus *)self->_status setSubscription:v8];
    v5 = [(BPSWindow *)self downstream];
    capacity = self->_capacity;
    v7 = self;
    os_unfair_lock_unlock(&self->_lock);
    [v5 receiveSubscription:v7];

    [v8 requestDemand:capacity];
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
  v10 = self;
  if (a3 <= 0)
  {
    [(BPSCountWindow *)a2 requestDemand:v10];
  }

  os_unfair_lock_lock(&v10->_lock);
  if ([(BPSSubscriptionStatus *)v10->_status state]== 1 && (v10->_downstreamRequested = 1, v10->_currentCount == v10->_capacity))
  {
    [(BPSSubscriptionStatus *)v10->_status setState:2];
    v5 = [(BPSWindow *)v10 downstream];
    status = v10->_status;
    v7 = v10->_accumulator;
    v8 = [(BPSSubscriptionStatus *)status subscription];
    os_unfair_lock_unlock(&v10->_lock);
    [v5 receiveInput:v7];

    v9 = +[BPSCompletion success];
    [v5 receiveCompletion:v9];

    [v8 cancel];
  }

  else
  {
    os_unfair_lock_unlock(&v10->_lock);
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