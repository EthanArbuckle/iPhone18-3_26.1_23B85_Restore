@interface BPSCorrelationProducer
- (BPSCorrelationProducer)initWithDownstream:(id)downstream;
- (id)receiveNewValue:(id)value source:(int64_t)source;
- (id)upstreamSubscriptions;
- (int64_t)receiveInput:(id)input;
- (int64_t)receiveInput:(id)input source:(int64_t)source;
- (void)cancel;
- (void)receiveCompletion:(id)completion;
- (void)receiveSubscription:(id)subscription;
- (void)requestDemand:(int64_t)demand;
@end

@implementation BPSCorrelationProducer

- (BPSCorrelationProducer)initWithDownstream:(id)downstream
{
  downstreamCopy = downstream;
  v9.receiver = self;
  v9.super_class = BPSCorrelationProducer;
  v6 = [(BPSCorrelationProducer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_downstream, downstream);
    v7->_state = 0;
    v7->_lock._os_unfair_lock_opaque = 0;
  }

  return v7;
}

- (id)receiveNewValue:(id)value source:(int64_t)source
{
  valueCopy = value;
  v6 = MEMORY[0x1E696AEC0];
  v7 = NSStringFromSelector(a2);
  v8 = [v6 stringWithFormat:@"Override %@ in a subclass", v7];

  v9 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v8 userInfo:0];
  objc_exception_throw(v9);
}

- (void)receiveCompletion:(id)completion
{
  completionCopy = completion;
  selfCopy = self;
  os_unfair_lock_lock(&selfCopy->_lock);
  state = [(BPSCorrelationProducer *)selfCopy state];
  switch(state)
  {
    case 2:
      goto LABEL_6;
    case 1:
      [(BPSCorrelationProducer *)selfCopy setState:2];
LABEL_6:
      downstream = [(BPSCorrelationProducer *)selfCopy downstream];
      [(BPSCorrelationProducer *)selfCopy setDownstream:0];
      os_unfair_lock_unlock(&selfCopy->_lock);
      [downstream receiveCompletion:completionCopy];

      break;
    case 0:
      os_unfair_lock_unlock(&selfCopy->_lock);
      v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Invalid State: Received completion before receiving subscription" userInfo:0];
      break;
  }
}

- (int64_t)receiveInput:(id)input source:(int64_t)source
{
  inputCopy = input;
  selfCopy = self;
  os_unfair_lock_lock(&selfCopy->_lock);
  state = [(BPSCorrelationProducer *)selfCopy state];
  switch(state)
  {
    case 2:
      os_unfair_lock_unlock(&selfCopy->_lock);
      break;
    case 1:
      os_unfair_lock_unlock(&selfCopy->_lock);
      v12 = [(BPSCorrelationProducer *)selfCopy receiveNewValue:inputCopy source:source];
      state2 = [v12 state];
      if (state2)
      {
        if (state2 == 2)
        {
          os_unfair_lock_lock(&selfCopy->_lock);
          [(BPSCorrelationProducer *)selfCopy setState:2];
          os_unfair_lock_unlock(&selfCopy->_lock);
          subscription = [(BPSCorrelationProducer *)selfCopy subscription];
          [subscription cancel];

          error = [v12 error];
          downstream = [(BPSCorrelationProducer *)selfCopy downstream];
          v21 = [BPSCompletion failureWithError:error];
          [downstream receiveCompletion:v21];

          goto LABEL_12;
        }

        if (state2 != 1)
        {
LABEL_12:

          break;
        }

        value = [v12 value];

        if (value)
        {
          downstream2 = [(BPSCorrelationProducer *)selfCopy downstream];
          value2 = [v12 value];
          v17 = [downstream2 receiveInput:value2];
        }

        else
        {
          v17 = 1;
        }
      }

      else
      {
        os_unfair_lock_lock(&selfCopy->_lock);
        [(BPSCorrelationProducer *)selfCopy setState:2];
        os_unfair_lock_unlock(&selfCopy->_lock);
        subscription2 = [(BPSCorrelationProducer *)selfCopy subscription];
        [subscription2 cancel];

        downstream3 = [(BPSCorrelationProducer *)selfCopy downstream];
        v25 = +[BPSCompletion success];
        [downstream3 receiveCompletion:v25];

        v17 = 0;
      }

      goto LABEL_14;
    case 0:
      os_unfair_lock_unlock(&selfCopy->_lock);
      v10 = MEMORY[0x1E695DF30];
      v11 = *MEMORY[0x1E695D930];
      v12 = NSStringFromSelector(a2);
      [v10 raise:v11 format:{@"Invalid State: Received value before receiving subscription %@", v12}];
      goto LABEL_12;
  }

  v17 = 0;
LABEL_14:

  return v17;
}

- (int64_t)receiveInput:(id)input
{
  selfCopy = self;
  v5 = [(BPSCorrelationProducer *)selfCopy receiveInput:input source:0];

  return v5;
}

- (void)receiveSubscription:(id)subscription
{
  subscriptionCopy = subscription;
  os_unfair_lock_lock(&self->_lock);
  state = [(BPSCorrelationProducer *)self state];
  if ((state - 1) >= 2)
  {
    if (state)
    {
      goto LABEL_6;
    }

    [(BPSCorrelationProducer *)self setState:1];
    [(BPSCorrelationProducer *)self setSubscription:subscriptionCopy];
    os_unfair_lock_unlock(&self->_lock);
    downstream = [(BPSCorrelationProducer *)self downstream];
    [downstream receiveSubscription:self];
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
    downstream = [(BPSCorrelationProducer *)self subscription];
    [downstream cancel];
  }

LABEL_6:
}

- (void)cancel
{
  selfCopy = self;
  os_unfair_lock_lock(&selfCopy->_lock);
  state = [(BPSCorrelationProducer *)selfCopy state];
  [(BPSCorrelationProducer *)selfCopy setState:2];
  os_unfair_lock_unlock(&selfCopy->_lock);
  if (state == 1)
  {
    subscription = [(BPSCorrelationProducer *)selfCopy subscription];
    [subscription cancel];
  }
}

- (void)requestDemand:(int64_t)demand
{
  selfCopy = self;
  v8 = selfCopy;
  if (demand <= 0)
  {
    [(BPSCorrelationProducer *)a2 requestDemand:selfCopy];
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
  subscription = [(BPSCorrelationProducer *)self subscription];
  if (subscription)
  {
    subscription2 = [(BPSCorrelationProducer *)self subscription];
    v8[0] = subscription2;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)requestDemand:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"BPSCorrelationProducer.m" lineNumber:173 description:@"Negative or zero demand requested"];
}

@end