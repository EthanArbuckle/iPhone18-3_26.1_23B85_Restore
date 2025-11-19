@interface BPSCorrelationProducer
- (BPSCorrelationProducer)initWithDownstream:(id)a3;
- (id)receiveNewValue:(id)a3 source:(int64_t)a4;
- (id)upstreamSubscriptions;
- (int64_t)receiveInput:(id)a3;
- (int64_t)receiveInput:(id)a3 source:(int64_t)a4;
- (void)cancel;
- (void)receiveCompletion:(id)a3;
- (void)receiveSubscription:(id)a3;
- (void)requestDemand:(int64_t)a3;
@end

@implementation BPSCorrelationProducer

- (BPSCorrelationProducer)initWithDownstream:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = BPSCorrelationProducer;
  v6 = [(BPSCorrelationProducer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_downstream, a3);
    v7->_state = 0;
    v7->_lock._os_unfair_lock_opaque = 0;
  }

  return v7;
}

- (id)receiveNewValue:(id)a3 source:(int64_t)a4
{
  v5 = a3;
  v6 = MEMORY[0x1E696AEC0];
  v7 = NSStringFromSelector(a2);
  v8 = [v6 stringWithFormat:@"Override %@ in a subclass", v7];

  v9 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v8 userInfo:0];
  objc_exception_throw(v9);
}

- (void)receiveCompletion:(id)a3
{
  v8 = a3;
  v4 = self;
  os_unfair_lock_lock(&v4->_lock);
  v5 = [(BPSCorrelationProducer *)v4 state];
  switch(v5)
  {
    case 2:
      goto LABEL_6;
    case 1:
      [(BPSCorrelationProducer *)v4 setState:2];
LABEL_6:
      v7 = [(BPSCorrelationProducer *)v4 downstream];
      [(BPSCorrelationProducer *)v4 setDownstream:0];
      os_unfair_lock_unlock(&v4->_lock);
      [v7 receiveCompletion:v8];

      break;
    case 0:
      os_unfair_lock_unlock(&v4->_lock);
      v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Invalid State: Received completion before receiving subscription" userInfo:0];
      break;
  }
}

- (int64_t)receiveInput:(id)a3 source:(int64_t)a4
{
  v7 = a3;
  v8 = self;
  os_unfair_lock_lock(&v8->_lock);
  v9 = [(BPSCorrelationProducer *)v8 state];
  switch(v9)
  {
    case 2:
      os_unfair_lock_unlock(&v8->_lock);
      break;
    case 1:
      os_unfair_lock_unlock(&v8->_lock);
      v12 = [(BPSCorrelationProducer *)v8 receiveNewValue:v7 source:a4];
      v13 = [v12 state];
      if (v13)
      {
        if (v13 == 2)
        {
          os_unfair_lock_lock(&v8->_lock);
          [(BPSCorrelationProducer *)v8 setState:2];
          os_unfair_lock_unlock(&v8->_lock);
          v18 = [(BPSCorrelationProducer *)v8 subscription];
          [v18 cancel];

          v19 = [v12 error];
          v20 = [(BPSCorrelationProducer *)v8 downstream];
          v21 = [BPSCompletion failureWithError:v19];
          [v20 receiveCompletion:v21];

          goto LABEL_12;
        }

        if (v13 != 1)
        {
LABEL_12:

          break;
        }

        v14 = [v12 value];

        if (v14)
        {
          v15 = [(BPSCorrelationProducer *)v8 downstream];
          v16 = [v12 value];
          v17 = [v15 receiveInput:v16];
        }

        else
        {
          v17 = 1;
        }
      }

      else
      {
        os_unfair_lock_lock(&v8->_lock);
        [(BPSCorrelationProducer *)v8 setState:2];
        os_unfair_lock_unlock(&v8->_lock);
        v23 = [(BPSCorrelationProducer *)v8 subscription];
        [v23 cancel];

        v24 = [(BPSCorrelationProducer *)v8 downstream];
        v25 = +[BPSCompletion success];
        [v24 receiveCompletion:v25];

        v17 = 0;
      }

      goto LABEL_14;
    case 0:
      os_unfair_lock_unlock(&v8->_lock);
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

- (int64_t)receiveInput:(id)a3
{
  v4 = self;
  v5 = [(BPSCorrelationProducer *)v4 receiveInput:a3 source:0];

  return v5;
}

- (void)receiveSubscription:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  v4 = [(BPSCorrelationProducer *)self state];
  if ((v4 - 1) >= 2)
  {
    if (v4)
    {
      goto LABEL_6;
    }

    [(BPSCorrelationProducer *)self setState:1];
    [(BPSCorrelationProducer *)self setSubscription:v6];
    os_unfair_lock_unlock(&self->_lock);
    v5 = [(BPSCorrelationProducer *)self downstream];
    [v5 receiveSubscription:self];
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
    v5 = [(BPSCorrelationProducer *)self subscription];
    [v5 cancel];
  }

LABEL_6:
}

- (void)cancel
{
  v4 = self;
  os_unfair_lock_lock(&v4->_lock);
  v2 = [(BPSCorrelationProducer *)v4 state];
  [(BPSCorrelationProducer *)v4 setState:2];
  os_unfair_lock_unlock(&v4->_lock);
  if (v2 == 1)
  {
    v3 = [(BPSCorrelationProducer *)v4 subscription];
    [v3 cancel];
  }
}

- (void)requestDemand:(int64_t)a3
{
  v5 = self;
  v8 = v5;
  if (a3 <= 0)
  {
    [(BPSCorrelationProducer *)a2 requestDemand:v5];
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
  v3 = [(BPSCorrelationProducer *)self subscription];
  if (v3)
  {
    v4 = [(BPSCorrelationProducer *)self subscription];
    v8[0] = v4;
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