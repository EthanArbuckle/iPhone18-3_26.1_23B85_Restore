@interface HKThrottleCallback
- (HKThrottleCallback)initWithThrottleDelay:(double)delay;
- (void)executeWithThrottle:(id)throttle;
@end

@implementation HKThrottleCallback

- (HKThrottleCallback)initWithThrottleDelay:(double)delay
{
  v8.receiver = self;
  v8.super_class = HKThrottleCallback;
  v4 = [(HKThrottleCallback *)&v8 init];
  v5 = v4;
  if (v4)
  {
    [(HKThrottleCallback *)v4 setThrottleDelayInNanoseconds:(delay / 0.000000001)];
    v6 = dispatch_queue_create("HKThrottleExpirationQueue", 0);
    [(HKThrottleCallback *)v5 setThrottleExpirationQueue:v6];

    v5->_throttleLock._os_unfair_lock_opaque = 0;
    [(HKThrottleCallback *)v5 setThrottleExpirationTime:-1];
    [(HKThrottleCallback *)v5 setLastExecutionBlock:0];
  }

  return v5;
}

- (void)executeWithThrottle:(id)throttle
{
  throttleCopy = throttle;
  os_unfair_lock_lock(&self->_throttleLock);
  if ([(HKThrottleCallback *)self throttleDelayInNanoseconds]< 1)
  {
    throttleCopy[2](throttleCopy);
  }

  else if ([(HKThrottleCallback *)self throttleExpirationTime]< 0)
  {
    throttleCopy[2](throttleCopy);
    [(HKThrottleCallback *)self setThrottleExpirationTime:[(HKThrottleCallback *)self throttleDelayInNanoseconds]+ clock_gettime_nsec_np(_CLOCK_MONOTONIC)];
    v6 = dispatch_time(0xFFFFFFFFFFFFFFFELL, [(HKThrottleCallback *)self throttleDelayInNanoseconds]);
    throttleExpirationQueue = [(HKThrottleCallback *)self throttleExpirationQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __42__HKThrottleCallback_executeWithThrottle___block_invoke;
    block[3] = &unk_1E81B55A8;
    block[4] = self;
    dispatch_after(v6, throttleExpirationQueue, block);
  }

  else
  {
    v5 = clock_gettime_nsec_np(_CLOCK_MONOTONIC);
    if (v5 >= [(HKThrottleCallback *)self throttleExpirationTime])
    {
      throttleCopy[2](throttleCopy);
      [(HKThrottleCallback *)self setLastExecutionBlock:0];
      [(HKThrottleCallback *)self setThrottleExpirationTime:-1];
    }

    else
    {
      [(HKThrottleCallback *)self setLastExecutionBlock:throttleCopy];
    }
  }

  os_unfair_lock_unlock(&self->_throttleLock);
}

void __42__HKThrottleCallback_executeWithThrottle___block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 8));
  v2 = [*(a1 + 32) lastExecutionBlock];

  if (v2)
  {
    v3 = [*(a1 + 32) lastExecutionBlock];
    v3[2]();

    [*(a1 + 32) setLastExecutionBlock:0];
  }

  [*(a1 + 32) setThrottleExpirationTime:-1];
  v4 = (*(a1 + 32) + 8);

  os_unfair_lock_unlock(v4);
}

@end