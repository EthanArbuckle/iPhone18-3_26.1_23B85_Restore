@interface HMFExponentialBackoffTimer
- (HMFExponentialBackoffTimer)initWithMinimumTimeInterval:(double)interval maximumTimeInterval:(double)timeInterval exponentialFactor:(int64_t)factor options:(unsigned int)options;
- (double)timeInterval;
- (void)__fire;
- (void)reset;
@end

@implementation HMFExponentialBackoffTimer

- (void)__fire
{
  isIncreasing = [(HMFExponentialBackoffTimer *)self isIncreasing];
  timeInterval = self->super._timeInterval;
  exponentialFactor = [(HMFExponentialBackoffTimer *)self exponentialFactor];
  if (isIncreasing)
  {
    v6 = timeInterval * exponentialFactor;
    [(HMFExponentialBackoffTimer *)self maximumTimeInterval];
    if (v6 > v7)
    {
      [(HMFExponentialBackoffTimer *)self maximumTimeInterval];
LABEL_6:
      v6 = v8;
    }
  }

  else
  {
    v6 = timeInterval / exponentialFactor;
    [(HMFExponentialBackoffTimer *)self minimumTimeInterval];
    if (v6 < v9)
    {
      [(HMFExponentialBackoffTimer *)self minimumTimeInterval];
      goto LABEL_6;
    }
  }

  self->super._timeInterval = v6;
  v10.receiver = self;
  v10.super_class = HMFExponentialBackoffTimer;
  [(HMFTimer *)&v10 __fire];
}

- (HMFExponentialBackoffTimer)initWithMinimumTimeInterval:(double)interval maximumTimeInterval:(double)timeInterval exponentialFactor:(int64_t)factor options:(unsigned int)options
{
  selfCopy = self;
  v28 = *MEMORY[0x277D85DE8];
  if (!factor)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier(0);
      *buf = 138543362;
      v23 = v13;
      v14 = "%{public}@[HMFExponentialBackoffTimer] The exponential factor cannot be 0";
      v15 = v12;
      v16 = 12;
      goto LABEL_10;
    }

LABEL_11:

    objc_autoreleasePoolPop(v11);
    v17 = 0;
    goto LABEL_12;
  }

  intervalCopy = interval;
  v9 = factor > 0;
  if (interval <= 0.0)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier(0);
      *buf = 138543618;
      v23 = v13;
      v24 = 2048;
      timeIntervalCopy = intervalCopy;
      v14 = "%{public}@[HMFExponentialBackoffTimer] The minimum time interval, %f, must be greater than 0";
      v15 = v12;
      v16 = 22;
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  if (timeInterval < interval)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier(0);
      *buf = 138543874;
      v23 = v13;
      v24 = 2048;
      timeIntervalCopy = timeInterval;
      v26 = 2048;
      v27 = intervalCopy;
      v14 = "%{public}@[HMFExponentialBackoffTimer] The maximum time interval, %f, must be greater than or equal to the minimum time interval, %f";
      v15 = v12;
      v16 = 32;
LABEL_10:
      _os_log_impl(&dword_22ADEC000, v15, OS_LOG_TYPE_ERROR, v14, buf, v16);

      goto LABEL_11;
    }

    goto LABEL_11;
  }

  if (factor <= 0)
  {
    interval = timeInterval;
  }

  v21.receiver = self;
  v21.super_class = HMFExponentialBackoffTimer;
  v20 = [(HMFTimer *)&v21 initWithTimeInterval:options | 4 options:interval];
  if (v20)
  {
    v20->_minimumTimeInterval = intervalCopy;
    v20->_maximumTimeInterval = timeInterval;
    v20->_exponentialFactor = factor;
    v20->_increasing = v9;
  }

  selfCopy = v20;
  v17 = selfCopy;
LABEL_12:

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

- (double)timeInterval
{
  os_unfair_lock_lock_with_options();
  timeInterval = self->super._timeInterval;
  os_unfair_lock_unlock(&self->super._lock);
  return timeInterval;
}

- (void)reset
{
  os_unfair_lock_lock_with_options();
  if ([(HMFExponentialBackoffTimer *)self isIncreasing])
  {
    [(HMFExponentialBackoffTimer *)self minimumTimeInterval];
  }

  else
  {
    [(HMFExponentialBackoffTimer *)self maximumTimeInterval];
  }

  self->super._timeInterval = v3;
  if (self->super._state == 2)
  {
    __kick(self);
  }

  os_unfair_lock_unlock(&self->super._lock);
}

@end