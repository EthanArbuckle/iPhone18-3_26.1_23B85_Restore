@interface _BPSHandleEventsInner
- (_BPSHandleEventsInner)initWithDownstream:(id)a3 handleEvents:(id)a4;
- (id)upstreamSubscriptions;
- (int64_t)receiveInput:(id)a3;
- (void)cancel;
- (void)receiveCompletion:(id)a3;
- (void)receiveSubscription:(id)a3;
- (void)requestDemand:(int64_t)a3;
- (void)upstreamSubscriptions;
@end

@implementation _BPSHandleEventsInner

- (_BPSHandleEventsInner)initWithDownstream:(id)a3 handleEvents:(id)a4
{
  v7 = a3;
  v8 = a4;
  v29.receiver = self;
  v29.super_class = _BPSHandleEventsInner;
  v9 = [(_BPSHandleEventsInner *)&v29 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_downstream, a3);
    v11 = [v8 receiveSubscription];
    v12 = [v11 copy];
    receiveSubscription = v10->_receiveSubscription;
    v10->_receiveSubscription = v12;

    v14 = [v8 receiveOutput];
    v15 = [v14 copy];
    receiveOutput = v10->_receiveOutput;
    v10->_receiveOutput = v15;

    v17 = [v8 receiveCompletion];
    v18 = [v17 copy];
    receiveCompletion = v10->_receiveCompletion;
    v10->_receiveCompletion = v18;

    v20 = [v8 receiveCancel];
    v21 = [v20 copy];
    receiveCancel = v10->_receiveCancel;
    v10->_receiveCancel = v21;

    v23 = [v8 receiveRequest];
    v24 = [v23 copy];
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

- (void)receiveCompletion:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self;
  v6 = __biome_log_for_category();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v16 = 138412290;
    v17 = objc_opt_class();
    _os_log_impl(&dword_1C871B000, v6, OS_LOG_TYPE_INFO, "%@ - completion", &v16, 0xCu);
  }

  os_unfair_lock_lock(&v5->_lock);
  v7 = _Block_copy(v5->_receiveCompletion);
  if (v7)
  {
    os_unfair_lock_unlock(&v5->_lock);
    v7[2](v7, v4);
    os_unfair_lock_lock(&v5->_lock);
  }

  receiveSubscription = v5->_receiveSubscription;
  v5->_receiveSubscription = 0;

  receiveOutput = v5->_receiveOutput;
  v5->_receiveOutput = 0;

  receiveCompletion = v5->_receiveCompletion;
  v5->_receiveCompletion = 0;

  receiveCancel = v5->_receiveCancel;
  v5->_receiveCancel = 0;

  receiveRequest = v5->_receiveRequest;
  v5->_receiveRequest = 0;

  os_unfair_lock_unlock(&v5->_lock);
  [(BPSSubscriber *)v5->_downstream receiveCompletion:v4];
  os_unfair_lock_lock(&v5->_lock);
  v13 = +[BPSSubscriptionStatus terminal];
  status = v5->_status;
  v5->_status = v13;

  os_unfair_lock_unlock(&v5->_lock);
  v15 = *MEMORY[0x1E69E9840];
}

- (int64_t)receiveInput:(id)a3
{
  v4 = self;
  v5 = a3;
  os_unfair_lock_lock(&v4->_lock);
  v6 = _Block_copy(v4->_receiveOutput);
  os_unfair_lock_unlock(&v4->_lock);
  if (v6)
  {
    v6[2](v6, v5);
  }

  v7 = [(BPSSubscriber *)v4->_downstream receiveInput:v5];

  v8 = _Block_copy(v4->_receiveRequest);
  v9 = v8;
  if (v7 >= 1 && v8 != 0)
  {
    (*(v8 + 2))(v8, v7);
  }

  return v7;
}

- (void)receiveSubscription:(id)a3
{
  v5 = a3;
  os_unfair_lock_lock(&self->_lock);
  v4 = _Block_copy(self->_receiveSubscription);
  if (v4)
  {
    os_unfair_lock_unlock(&self->_lock);
    v4[2](v4, v5);
    os_unfair_lock_lock(&self->_lock);
  }

  if ([(BPSSubscriptionStatus *)self->_status state])
  {
    os_unfair_lock_unlock(&self->_lock);
    [v5 cancel];
  }

  else
  {
    [(BPSSubscriptionStatus *)self->_status setState:1];
    [(BPSSubscriptionStatus *)self->_status setSubscription:v5];
    os_unfair_lock_unlock(&self->_lock);
    [(BPSSubscriber *)self->_downstream receiveSubscription:self];
  }
}

- (void)requestDemand:(int64_t)a3
{
  v7 = self;
  os_unfair_lock_lock(&v7->_lock);
  v4 = _Block_copy(v7->_receiveRequest);
  if (v4)
  {
    os_unfair_lock_unlock(&v7->_lock);
    v4[2](v4, a3);
    os_unfair_lock_lock(&v7->_lock);
  }

  v5 = [(BPSSubscriptionStatus *)v7->_status subscription];
  v6 = [(BPSSubscriptionStatus *)v7->_status state];
  os_unfair_lock_unlock(&v7->_lock);
  if (v6 == 1)
  {
    [v5 requestDemand:a3];
  }
}

- (id)upstreamSubscriptions
{
  v8[1] = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  v3 = [(BPSSubscriptionStatus *)self->_status subscription];
  os_unfair_lock_unlock(&self->_lock);
  if (v3)
  {
    v8[0] = v3;
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