@interface HMFExponentialBackoffTimer
- (HMFExponentialBackoffTimer)initWithMinimumTimeInterval:(double)a3 maximumTimeInterval:(double)a4 exponentialFactor:(int64_t)a5 options:(unsigned int)a6;
- (double)timeInterval;
- (void)__fire;
- (void)reset;
@end

@implementation HMFExponentialBackoffTimer

- (void)__fire
{
  v3 = [(HMFExponentialBackoffTimer *)self isIncreasing];
  timeInterval = self->super._timeInterval;
  v5 = [(HMFExponentialBackoffTimer *)self exponentialFactor];
  if (v3)
  {
    v6 = timeInterval * v5;
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
    v6 = timeInterval / v5;
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

- (HMFExponentialBackoffTimer)initWithMinimumTimeInterval:(double)a3 maximumTimeInterval:(double)a4 exponentialFactor:(int64_t)a5 options:(unsigned int)a6
{
  v6 = self;
  v28 = *MEMORY[0x277D85DE8];
  if (!a5)
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

  v8 = a3;
  v9 = a5 > 0;
  if (a3 <= 0.0)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier(0);
      *buf = 138543618;
      v23 = v13;
      v24 = 2048;
      v25 = v8;
      v14 = "%{public}@[HMFExponentialBackoffTimer] The minimum time interval, %f, must be greater than 0";
      v15 = v12;
      v16 = 22;
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  if (a4 < a3)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier(0);
      *buf = 138543874;
      v23 = v13;
      v24 = 2048;
      v25 = a4;
      v26 = 2048;
      v27 = v8;
      v14 = "%{public}@[HMFExponentialBackoffTimer] The maximum time interval, %f, must be greater than or equal to the minimum time interval, %f";
      v15 = v12;
      v16 = 32;
LABEL_10:
      _os_log_impl(&dword_22ADEC000, v15, OS_LOG_TYPE_ERROR, v14, buf, v16);

      goto LABEL_11;
    }

    goto LABEL_11;
  }

  if (a5 <= 0)
  {
    a3 = a4;
  }

  v21.receiver = self;
  v21.super_class = HMFExponentialBackoffTimer;
  v20 = [(HMFTimer *)&v21 initWithTimeInterval:a6 | 4 options:a3];
  if (v20)
  {
    v20->_minimumTimeInterval = v8;
    v20->_maximumTimeInterval = a4;
    v20->_exponentialFactor = a5;
    v20->_increasing = v9;
  }

  v6 = v20;
  v17 = v6;
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