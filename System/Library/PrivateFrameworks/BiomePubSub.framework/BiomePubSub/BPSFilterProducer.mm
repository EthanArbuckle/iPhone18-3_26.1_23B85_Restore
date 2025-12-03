@interface BPSFilterProducer
- (BPSFilterProducer)initWithDownstream:(id)downstream;
- (id)receiveNewValue:(id)value;
- (id)upstreamSubscriptions;
- (int64_t)receiveInput:(id)input;
- (void)cancel;
- (void)receiveCompletion:(id)completion;
- (void)receiveSubscription:(id)subscription;
- (void)requestDemand:(int64_t)demand;
@end

@implementation BPSFilterProducer

- (BPSFilterProducer)initWithDownstream:(id)downstream
{
  downstreamCopy = downstream;
  v9.receiver = self;
  v9.super_class = BPSFilterProducer;
  v6 = [(BPSFilterProducer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_downstream, downstream);
    v7->_state = 0;
    v7->_lock._os_unfair_lock_opaque = 0;
  }

  return v7;
}

- (id)receiveNewValue:(id)value
{
  valueCopy = value;
  v5 = MEMORY[0x1E696AEC0];
  v6 = NSStringFromSelector(a2);
  v7 = [v5 stringWithFormat:@"Override %@ in a subclass", v6];

  v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v7 userInfo:0];
  objc_exception_throw(v8);
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
    _os_log_impl(&dword_1C871B000, v6, OS_LOG_TYPE_INFO, "%@ - completion", &v11, 0xCu);
  }

  os_unfair_lock_lock(&selfCopy->_lock);
  state = [(BPSFilterProducer *)selfCopy state];
  switch(state)
  {
    case 2:
      goto LABEL_8;
    case 1:
      [(BPSFilterProducer *)selfCopy setState:2];
      os_unfair_lock_unlock(&selfCopy->_lock);
      downstream = [(BPSFilterProducer *)selfCopy downstream];
      [downstream receiveCompletion:completionCopy];

      os_unfair_lock_lock(&selfCopy->_lock);
      [(BPSFilterProducer *)selfCopy setSubscription:0];
LABEL_8:
      os_unfair_lock_unlock(&selfCopy->_lock);
      break;
    case 0:
      os_unfair_lock_unlock(&selfCopy->_lock);
      v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Invalid State: Received completion before receiving subscription" userInfo:0];
      break;
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (int64_t)receiveInput:(id)input
{
  inputCopy = input;
  selfCopy = self;
  os_unfair_lock_lock(&selfCopy->_lock);
  state = [(BPSFilterProducer *)selfCopy state];
  switch(state)
  {
    case 2:
      os_unfair_lock_unlock(&selfCopy->_lock);
      break;
    case 1:
      os_unfair_lock_unlock(&selfCopy->_lock);
      v10 = [(BPSFilterProducer *)selfCopy receiveNewValue:inputCopy];
      state2 = [v10 state];
      if (state2)
      {
        if (state2 == 2)
        {
          os_unfair_lock_lock(&selfCopy->_lock);
          [(BPSFilterProducer *)selfCopy setState:2];
          os_unfair_lock_unlock(&selfCopy->_lock);
          subscription = [(BPSFilterProducer *)selfCopy subscription];
          [subscription cancel];

          error = [v10 error];
          downstream = [(BPSFilterProducer *)selfCopy downstream];
          v19 = [BPSCompletion failureWithError:error];
          [downstream receiveCompletion:v19];

          goto LABEL_12;
        }

        if (state2 != 1)
        {
LABEL_12:

          break;
        }

        value = [v10 value];

        if (value)
        {
          downstream2 = [(BPSFilterProducer *)selfCopy downstream];
          value2 = [v10 value];
          v15 = [downstream2 receiveInput:value2];
        }

        else
        {
          v15 = 1;
        }
      }

      else
      {
        os_unfair_lock_lock(&selfCopy->_lock);
        [(BPSFilterProducer *)selfCopy setState:2];
        os_unfair_lock_unlock(&selfCopy->_lock);
        subscription2 = [(BPSFilterProducer *)selfCopy subscription];
        [subscription2 cancel];

        downstream3 = [(BPSFilterProducer *)selfCopy downstream];
        v23 = +[BPSCompletion success];
        [downstream3 receiveCompletion:v23];

        v15 = 0;
      }

      goto LABEL_14;
    case 0:
      os_unfair_lock_unlock(&selfCopy->_lock);
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

- (void)receiveSubscription:(id)subscription
{
  subscriptionCopy = subscription;
  os_unfair_lock_lock(&self->_lock);
  state = [(BPSFilterProducer *)self state];
  if ((state - 1) >= 2)
  {
    if (state)
    {
      goto LABEL_6;
    }

    [(BPSFilterProducer *)self setState:1];
    [(BPSFilterProducer *)self setSubscription:subscriptionCopy];
    os_unfair_lock_unlock(&self->_lock);
    downstream = [(BPSFilterProducer *)self downstream];
    [downstream receiveSubscription:self];
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
    downstream = [(BPSFilterProducer *)self subscription];
    [downstream cancel];
  }

LABEL_6:
}

- (void)cancel
{
  selfCopy = self;
  v3 = __biome_log_for_category();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(_BPSHandleEventsInner *)selfCopy cancel];
  }

  os_unfair_lock_lock(&selfCopy->_lock);
  state = [(BPSFilterProducer *)selfCopy state];
  [(BPSFilterProducer *)selfCopy setState:2];
  if (state == 1)
  {
    subscription = [(BPSFilterProducer *)selfCopy subscription];
    [(BPSFilterProducer *)selfCopy setSubscription:0];
    os_unfair_lock_unlock(&selfCopy->_lock);
    [subscription cancel];
  }

  else
  {
    [(BPSFilterProducer *)selfCopy setSubscription:0];
    os_unfair_lock_unlock(&selfCopy->_lock);
  }
}

- (void)requestDemand:(int64_t)demand
{
  selfCopy = self;
  v8 = selfCopy;
  if (demand <= 0)
  {
    [(BPSFilterProducer *)a2 requestDemand:selfCopy];
    selfCopy = v8;
  }

  os_unfair_lock_lock(&selfCopy->_lock);
  state = [(os_unfair_lock_s *)v8 state];
  switch(state)
  {
    case 2:
      os_unfair_lock_unlock(v8 + 2);
      break;
    case 1:
      os_unfair_lock_unlock(v8 + 2);
      subscription = [(os_unfair_lock_s *)v8 subscription];
      [subscription requestDemand:demand];

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
  subscription = [(BPSFilterProducer *)self subscription];

  if (subscription)
  {
    subscription2 = [(BPSFilterProducer *)self subscription];
    v8[0] = subscription2;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  }

  else
  {
    subscription2 = __biome_log_for_category();
    if (os_log_type_enabled(subscription2, OS_LOG_TYPE_ERROR))
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