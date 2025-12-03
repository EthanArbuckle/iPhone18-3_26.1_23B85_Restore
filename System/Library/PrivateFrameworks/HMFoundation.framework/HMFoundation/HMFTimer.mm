@interface HMFTimer
- (BOOL)isRunning;
- (HMFTimer)init;
- (HMFTimer)initWithTimeInterval:(double)interval options:(unsigned int)options;
- (HMFTimerDelegate)delegate;
- (NSDate)fireDate;
- (OS_dispatch_queue)delegateQueue;
- (id)attributeDescriptions;
- (void)__fire;
- (void)__handleExpiration;
- (void)cancel;
- (void)dealloc;
- (void)fire;
- (void)kick;
- (void)resume;
- (void)setDelegateQueue:(id)queue;
- (void)setFireDate:(id)date;
- (void)suspend;
@end

@implementation HMFTimer

- (void)resume
{
  os_unfair_lock_lock_with_options();
  __resume(self);

  os_unfair_lock_unlock(&self->_lock);
}

- (void)__handleExpiration
{
  v3 = objc_autoreleasePoolPush();
  v4 = [[HMFOSTransaction alloc] initWithName:@"com.apple.hmftimer.handle-expiration"];
  os_unfair_lock_lock_with_options();
  if (self->_state == 2)
  {
    [(HMFTimer *)self __fire];
    os_unfair_lock_unlock(&self->_lock);
    dispatch_assert_queue_V2(self->_timerQueue);
    delegate = [(HMFTimer *)self delegate];
    [delegate timerDidFire:self];
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  objc_autoreleasePoolPop(v3);
}

- (void)__fire
{
  if ((self->_options & 4) != 0)
  {

    __kick(self);
  }

  else
  {
    date = [MEMORY[0x277CBEAA8] date];
    fireDate = self->_fireDate;
    self->_fireDate = date;

    __suspend(self);
  }
}

- (HMFTimerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)suspend
{
  os_unfair_lock_lock_with_options();
  __suspend(self);

  os_unfair_lock_unlock(&self->_lock);
}

- (void)cancel
{
  os_unfair_lock_lock_with_options();
  selfCopy = self;
  v4 = selfCopy;
  state = selfCopy->_state;
  if (state != 3)
  {
    if (state == 1)
    {
      __resume(selfCopy);
    }

    timer = [(HMFTimer *)v4 timer];
    dispatch_source_cancel(timer);

    v4->_state = 3;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)dealloc
{
  timer = self->_timer;
  if (timer && self->_state == 1)
  {
    dispatch_resume(timer);
  }

  v4.receiver = self;
  v4.super_class = HMFTimer;
  [(HMFTimer *)&v4 dealloc];
}

- (HMFTimer)init
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (HMFTimer)initWithTimeInterval:(double)interval options:(unsigned int)options
{
  selfCopy = self;
  v22 = *MEMORY[0x277D85DE8];
  if (interval <= 0.0)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier(0);
      *buf = 138543618;
      v19 = v12;
      v20 = 2048;
      intervalCopy = interval;
      _os_log_impl(&dword_22ADEC000, v11, OS_LOG_TYPE_ERROR, "%{public}@[HMFTimer] Expiration, %f, must be greater than 0", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v13 = 0;
  }

  else
  {
    v17.receiver = self;
    v17.super_class = HMFTimer;
    v7 = [(HMFTimer *)&v17 init];
    if (v7)
    {
      v7->_state = 1;
      v7->_timeInterval = interval;
      v7->_options = options;
      if ((options & 2) != 0)
      {
        v14 = 1000000;
      }

      else
      {
        v8 = interval * 1000000000.0;
        if ((options & 8) != 0)
        {
          v9 = v8 * 0.5;
        }

        else
        {
          v9 = v8 / 10.0;
        }

        v14 = v9;
      }

      v7->_leeway = v14;
    }

    selfCopy = v7;
    v13 = selfCopy;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v13;
}

- (id)attributeDescriptions
{
  v16[3] = *MEMORY[0x277D85DE8];
  v3 = [HMFAttributeDescription alloc];
  v4 = HMFBooleanToString([(HMFTimer *)self isRunning]);
  v5 = [(HMFAttributeDescription *)v3 initWithName:@"Running" value:v4];
  v6 = [HMFAttributeDescription alloc];
  v7 = MEMORY[0x277CCABB0];
  [(HMFTimer *)self timeInterval];
  v8 = [v7 numberWithDouble:?];
  v9 = [(HMFAttributeDescription *)v6 initWithName:@"Interval" value:v8];
  v16[1] = v9;
  v10 = [HMFAttributeDescription alloc];
  v11 = HMFBooleanToString((self->_options >> 2) & 1);
  v12 = [(HMFAttributeDescription *)v10 initWithName:@"Repeating" value:v11];
  v16[2] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:3];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (BOOL)isRunning
{
  os_unfair_lock_lock_with_options();
  v3 = self->_state == 2;
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (NSDate)fireDate
{
  os_unfair_lock_lock_with_options();
  fireDate = self->_fireDate;
  if (fireDate)
  {
    distantFuture = fireDate;
  }

  else
  {
    distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  }

  v5 = distantFuture;
  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (void)setFireDate:(id)date
{
  dateCopy = date;
  os_unfair_lock_lock_with_options();
  fireDate = self->_fireDate;
  self->_fireDate = dateCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (OS_dispatch_queue)delegateQueue
{
  os_unfair_lock_lock_with_options();
  v3 = self->_delegateQueue;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setDelegateQueue:(id)queue
{
  queueCopy = queue;
  os_unfair_lock_lock_with_options();
  if (self->_timer)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"HMFTimer delegateQueue can only be set before activation (resume/fire)"];
  }

  delegateQueue = self->_delegateQueue;
  self->_delegateQueue = queueCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)kick
{
  os_unfair_lock_lock_with_options();
  __kick(self);

  os_unfair_lock_unlock(&self->_lock);
}

- (void)fire
{
  os_unfair_lock_lock_with_options();
  __activateIfNecessary(self);
  [(HMFTimer *)self __fire];
  os_unfair_lock_unlock(&self->_lock);
  timerQueue = self->_timerQueue;
  if ((self->_options & 0x10) != 0)
  {
    v5 = QOS_CLASS_USER_INITIATED;
  }

  else
  {
    v4 = qos_class_self();
    if (v4 <= QOS_CLASS_UTILITY)
    {
      v5 = QOS_CLASS_UTILITY;
    }

    else
    {
      v5 = v4;
    }
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __16__HMFTimer_fire__block_invoke;
  block[3] = &unk_2786E6C80;
  block[4] = self;
  v6 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v5, 0, block);
  dispatch_async(timerQueue, v6);
}

void __16__HMFTimer_fire__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 timerDidFire:*(a1 + 32)];
}

@end