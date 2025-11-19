@interface BPSFilterProducer
- (BPSFilterProducer)initWithDownstream:(id)a3;
- (id)receiveNewValue:(id)a3;
- (id)upstreamSubscriptions;
- (int64_t)receiveInput:(id)a3;
- (void)cancel;
- (void)receiveCompletion:(id)a3;
- (void)receiveSubscription:(id)a3;
- (void)requestDemand:(int64_t)a3;
@end

@implementation BPSFilterProducer

- (BPSFilterProducer)initWithDownstream:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = BPSFilterProducer;
  v6 = [(BPSFilterProducer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_downstream, a3);
    v7->_state = 0;
    v7->_lock._os_unfair_lock_opaque = 0;
  }

  return v7;
}

- (id)receiveNewValue:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E696AEC0];
  v6 = NSStringFromSelector(a2);
  v7 = [v5 stringWithFormat:@"Override %@ in a subclass", v6];

  v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v7 userInfo:0];
  objc_exception_throw(v8);
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
    _os_log_impl(&dword_1C871B000, v6, OS_LOG_TYPE_INFO, "%@ - completion", &v11, 0xCu);
  }

  os_unfair_lock_lock(&v5->_lock);
  v7 = [(BPSFilterProducer *)v5 state];
  switch(v7)
  {
    case 2:
      goto LABEL_8;
    case 1:
      [(BPSFilterProducer *)v5 setState:2];
      os_unfair_lock_unlock(&v5->_lock);
      v9 = [(BPSFilterProducer *)v5 downstream];
      [v9 receiveCompletion:v4];

      os_unfair_lock_lock(&v5->_lock);
      [(BPSFilterProducer *)v5 setSubscription:0];
LABEL_8:
      os_unfair_lock_unlock(&v5->_lock);
      break;
    case 0:
      os_unfair_lock_unlock(&v5->_lock);
      v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Invalid State: Received completion before receiving subscription" userInfo:0];
      break;
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (int64_t)receiveInput:(id)a3
{
  v5 = a3;
  v6 = self;
  os_unfair_lock_lock(&v6->_lock);
  v7 = [(BPSFilterProducer *)v6 state];
  switch(v7)
  {
    case 2:
      os_unfair_lock_unlock(&v6->_lock);
      break;
    case 1:
      os_unfair_lock_unlock(&v6->_lock);
      v10 = [(BPSFilterProducer *)v6 receiveNewValue:v5];
      v11 = [v10 state];
      if (v11)
      {
        if (v11 == 2)
        {
          os_unfair_lock_lock(&v6->_lock);
          [(BPSFilterProducer *)v6 setState:2];
          os_unfair_lock_unlock(&v6->_lock);
          v16 = [(BPSFilterProducer *)v6 subscription];
          [v16 cancel];

          v17 = [v10 error];
          v18 = [(BPSFilterProducer *)v6 downstream];
          v19 = [BPSCompletion failureWithError:v17];
          [v18 receiveCompletion:v19];

          goto LABEL_12;
        }

        if (v11 != 1)
        {
LABEL_12:

          break;
        }

        v12 = [v10 value];

        if (v12)
        {
          v13 = [(BPSFilterProducer *)v6 downstream];
          v14 = [v10 value];
          v15 = [v13 receiveInput:v14];
        }

        else
        {
          v15 = 1;
        }
      }

      else
      {
        os_unfair_lock_lock(&v6->_lock);
        [(BPSFilterProducer *)v6 setState:2];
        os_unfair_lock_unlock(&v6->_lock);
        v21 = [(BPSFilterProducer *)v6 subscription];
        [v21 cancel];

        v22 = [(BPSFilterProducer *)v6 downstream];
        v23 = +[BPSCompletion success];
        [v22 receiveCompletion:v23];

        v15 = 0;
      }

      goto LABEL_14;
    case 0:
      os_unfair_lock_unlock(&v6->_lock);
      v8 = MEMORY[0x1E695DF30];
      v9 = *MEMORY[0x1E695D930];
      v10 = NSStringFromSelector(a2);
      [v8 raise:v9 format:{@"Invalid State: Received value before receiving subscription %@", v10}];
      goto LABEL_12;
  }

  v15 = 0;
LABEL_14:

  return v15;
}

- (void)receiveSubscription:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  v4 = [(BPSFilterProducer *)self state];
  if ((v4 - 1) >= 2)
  {
    if (v4)
    {
      goto LABEL_6;
    }

    [(BPSFilterProducer *)self setState:1];
    [(BPSFilterProducer *)self setSubscription:v6];
    os_unfair_lock_unlock(&self->_lock);
    v5 = [(BPSFilterProducer *)self downstream];
    [v5 receiveSubscription:self];
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
    v5 = [(BPSFilterProducer *)self subscription];
    [v5 cancel];
  }

LABEL_6:
}

- (void)cancel
{
  v2 = self;
  v3 = __biome_log_for_category();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(_BPSHandleEventsInner *)v2 cancel];
  }

  os_unfair_lock_lock(&v2->_lock);
  v4 = [(BPSFilterProducer *)v2 state];
  [(BPSFilterProducer *)v2 setState:2];
  if (v4 == 1)
  {
    v5 = [(BPSFilterProducer *)v2 subscription];
    [(BPSFilterProducer *)v2 setSubscription:0];
    os_unfair_lock_unlock(&v2->_lock);
    [v5 cancel];
  }

  else
  {
    [(BPSFilterProducer *)v2 setSubscription:0];
    os_unfair_lock_unlock(&v2->_lock);
  }
}

- (void)requestDemand:(int64_t)a3
{
  v5 = self;
  v8 = v5;
  if (a3 <= 0)
  {
    [(BPSFilterProducer *)a2 requestDemand:v5];
    v5 = v8;
  }

  os_unfair_lock_lock(&v5->_lock);
  v6 = [(os_unfair_lock_s *)v8 state];
  switch(v6)
  {
    case 2:
      os_unfair_lock_unlock(v8 + 2);
      break;
    case 1:
      os_unfair_lock_unlock(v8 + 2);
      v7 = [(os_unfair_lock_s *)v8 subscription];
      [v7 requestDemand:a3];

      break;
    case 0:
      os_unfair_lock_unlock(v8 + 2);
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Invalid state: Received request before sending subscription"];
      break;
  }

  MEMORY[0x1EEE66BB8]();
}

- (id)upstreamSubscriptions
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = [(BPSFilterProducer *)self subscription];

  if (v3)
  {
    v4 = [(BPSFilterProducer *)self subscription];
    v8[0] = v4;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  }

  else
  {
    v4 = __biome_log_for_category();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(_BPSHandleEventsInner *)self upstreamSubscriptions];
    }

    v5 = MEMORY[0x1E695E0F0];
  }

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)requestDemand:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"BPSFilterProducer.m" lineNumber:168 description:@"Negative or zero demand requested"];
}

@end