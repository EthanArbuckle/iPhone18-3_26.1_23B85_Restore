@interface _BPSMulticastInner
- (_BPSMulticastInner)initWithDownstream:(id)a3;
- (id)upstreamSubscriptions;
- (int64_t)receiveInput:(id)a3;
- (void)cancel;
- (void)dealloc;
- (void)receiveCompletion:(id)a3;
- (void)receiveSubscription:(id)a3;
- (void)requestDemand:(int64_t)a3;
@end

@implementation _BPSMulticastInner

- (_BPSMulticastInner)initWithDownstream:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = _BPSMulticastInner;
  v6 = [(_BPSMulticastInner *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_downstream, a3);
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

- (void)receiveSubscription:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  if ([(BPSSubscriptionStatus *)self->_status state])
  {
    os_unfair_lock_unlock(&self->_lock);
    [(BPSSubscriber *)v6 cancel];
  }

  else
  {
    [(BPSSubscriptionStatus *)self->_status setState:1];
    [(BPSSubscriptionStatus *)self->_status setSubscription:v6];

    downstream = self->_downstream;
    v5 = self;
    v6 = downstream;
    os_unfair_lock_unlock(&self->_lock);
    [(BPSSubscriber *)v6 receiveSubscription:v5];
  }
}

- (int64_t)receiveInput:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = __biome_log_for_category();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(_BPSMulticastInner *)v4 receiveInput:v6];
  }

  os_unfair_lock_lock(&v5->_lock);
  v7 = [(BPSSubscriptionStatus *)v5->_status state];
  os_unfair_lock_unlock(&v5->_lock);
  if (v7 == 1)
  {
    v8 = [(_BPSMulticastInner *)v5 downstream];
    v9 = [v8 receiveInput:v4];

    if (v9 > 0)
    {
      v10 = [(BPSSubscriptionStatus *)v5->_status subscription];
      [v10 requestDemand:v9];
    }
  }

  return 0;
}

- (void)requestDemand:(int64_t)a3
{
  v6 = self;
  if (a3 <= 0)
  {
    [(_BPSMulticastInner *)a2 requestDemand:v6];
  }

  os_unfair_lock_lock(&v6->_lock);
  if ([(BPSSubscriptionStatus *)v6->_status state]== 1)
  {
    v5 = [(BPSSubscriptionStatus *)v6->_status subscription];
    os_unfair_lock_unlock(&v6->_lock);
    [v5 requestDemand:a3];
  }

  else
  {
    os_unfair_lock_unlock(&v6->_lock);
  }
}

- (void)receiveCompletion:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self;
  v6 = __biome_log_for_category();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v11 = 138412290;
    v12 = objc_opt_class();
    v7 = v12;
    _os_log_impl(&dword_1C871B000, v6, OS_LOG_TYPE_INFO, "%@ - completion", &v11, 0xCu);
  }

  os_unfair_lock_lock(&v5->_lock);
  v8 = [(BPSSubscriptionStatus *)v5->_status state];
  os_unfair_lock_unlock(&v5->_lock);
  if (v8 == 1)
  {
    v9 = [(_BPSMulticastInner *)v5 downstream];
    [v9 receiveCompletion:v4];

    os_unfair_lock_lock(&v5->_lock);
    [(BPSSubscriptionStatus *)v5->_status setState:2];
    os_unfair_lock_unlock(&v5->_lock);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)cancel
{
  v3 = self;
  os_unfair_lock_lock(&v3->_lock);
  if ([(BPSSubscriptionStatus *)v3->_status state]== 1)
  {
    [(BPSSubscriptionStatus *)v3->_status setState:2];
    os_unfair_lock_unlock(&v3->_lock);
    v2 = [(BPSSubscriptionStatus *)v3->_status subscription];
    [v2 cancel];
  }

  else
  {
    os_unfair_lock_unlock(&v3->_lock);
  }
}

- (id)upstreamSubscriptions
{
  v7[1] = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  if ([(BPSSubscriptionStatus *)self->_status state]== 1)
  {
    v3 = [(BPSSubscriptionStatus *)self->_status subscription];
    os_unfair_lock_unlock(&self->_lock);
    v7[0] = v3;
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