@interface HMMTRTimeBasedCounter
- (BOOL)_startNewCountingPeriod:(double)period;
- (BOOL)incrementOrReset;
- (id)initTimeBasedCounter:(unint64_t)counter;
- (void)resetTimeBasedCounter;
@end

@implementation HMMTRTimeBasedCounter

- (void)resetTimeBasedCounter
{
  v10 = *MEMORY[0x277D85DE8];
  os_unfair_recursive_lock_lock_with_options();
  [(HMMTRTimeBasedCounter *)self setCount:0];
  [(HMMTRTimeBasedCounter *)self setStartTime:0.0];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_DEBUG, "%{public}@Counter manually reset", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  os_unfair_recursive_lock_unlock();
  v7 = *MEMORY[0x277D85DE8];
}

- (BOOL)_startNewCountingPeriod:(double)period
{
  os_unfair_lock_assert_owner(&self->_timeBasedCounterlock);
  [(HMMTRTimeBasedCounter *)self setCount:1];
  [(HMMTRTimeBasedCounter *)self setStartTime:period];
  return 1;
}

- (BOOL)incrementOrReset
{
  v36 = *MEMORY[0x277D85DE8];
  os_unfair_recursive_lock_lock_with_options();
  HMFUptime();
  v4 = v3;
  [(HMMTRTimeBasedCounter *)self startTime];
  if (v5 == 0.0)
  {
    v6 = [(HMMTRTimeBasedCounter *)self _startNewCountingPeriod:v4];
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      [(HMMTRTimeBasedCounter *)selfCopy startTime];
      v28 = 138543618;
      v29 = v10;
      v30 = 2048;
      v31 = v11;
      _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_INFO, "%{public}@First use: Counter started at %f", &v28, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  else
  {
    [(HMMTRTimeBasedCounter *)self startTime];
    if (v4 - v12 >= 86400.0)
    {
      v18 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = HMFGetLogIdentifier();
        v28 = 138543362;
        v29 = v21;
        _os_log_impl(&dword_22AEAE000, v20, OS_LOG_TYPE_INFO, "%{public}@Counter reset due to timeout", &v28, 0xCu);
      }

      objc_autoreleasePoolPop(v18);
      v6 = [(HMMTRTimeBasedCounter *)selfCopy2 _startNewCountingPeriod:v4];
    }

    else
    {
      v13 = [(HMMTRTimeBasedCounter *)self count];
      if (v13 <= [(HMMTRTimeBasedCounter *)self threshold])
      {
        [(HMMTRTimeBasedCounter *)self setCount:[(HMMTRTimeBasedCounter *)self count]+ 1];
        v22 = objc_autoreleasePoolPush();
        selfCopy3 = self;
        v24 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          v25 = HMFGetLogIdentifier();
          v28 = 138543618;
          v29 = v25;
          v30 = 2048;
          v31 = [(HMMTRTimeBasedCounter *)selfCopy3 count];
          _os_log_impl(&dword_22AEAE000, v24, OS_LOG_TYPE_DEBUG, "%{public}@Counter incremented to %ld", &v28, 0x16u);
        }

        objc_autoreleasePoolPop(v22);
        v6 = 1;
      }

      else
      {
        v14 = objc_autoreleasePoolPush();
        selfCopy4 = self;
        v16 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          v17 = HMFGetLogIdentifier();
          v28 = 138544130;
          v29 = v17;
          v30 = 2048;
          v31 = [(HMMTRTimeBasedCounter *)selfCopy4 count];
          v32 = 2048;
          threshold = [(HMMTRTimeBasedCounter *)selfCopy4 threshold];
          v34 = 2048;
          v35 = 24;
          _os_log_impl(&dword_22AEAE000, v16, OS_LOG_TYPE_DEBUG, "%{public}@Counter =  %ld, reached its max (%ld) in last %llu hours", &v28, 0x2Au);
        }

        objc_autoreleasePoolPop(v14);
        v6 = 0;
      }
    }
  }

  os_unfair_recursive_lock_unlock();
  v26 = *MEMORY[0x277D85DE8];
  return v6;
}

- (id)initTimeBasedCounter:(unint64_t)counter
{
  v5.receiver = self;
  v5.super_class = HMMTRTimeBasedCounter;
  result = [(HMMTRTimeBasedCounter *)&v5 init];
  if (result)
  {
    *(result + 1) = 0;
    *(result + 2) = 0;
    *(result + 3) = counter;
    *(result + 4) = 0;
  }

  return result;
}

@end