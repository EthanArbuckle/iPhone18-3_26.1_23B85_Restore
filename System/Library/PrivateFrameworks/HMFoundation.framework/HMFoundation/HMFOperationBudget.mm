@interface HMFOperationBudget
+ (BOOL)automaticallyNotifiesObserversForKey:(id)a3;
+ (id)logCategory;
- (BOOL)decrementByCount:(unint64_t)a3;
- (BOOL)isEmpty;
- (BOOL)isFull;
- (HMFOperationBudget)init;
- (HMFOperationBudget)initWithLimit:(unint64_t)a3 rate:(_HMFRate)a4;
- (_HMFRate)rate;
- (unint64_t)value;
- (void)reset;
- (void)timerDidFire:(id)a3;
@end

@implementation HMFOperationBudget

+ (id)logCategory
{
  if (_MergedGlobals_3_1 != -1)
  {
    dispatch_once(&_MergedGlobals_3_1, &__block_literal_global_11);
  }

  v3 = qword_280AFC2E0;

  return v3;
}

+ (BOOL)automaticallyNotifiesObserversForKey:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"value"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"full"))
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"empty"] ^ 1;
  }

  return v4;
}

- (HMFOperationBudget)init
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

- (HMFOperationBudget)initWithLimit:(unint64_t)a3 rate:(_HMFRate)a4
{
  if (!a3)
  {
    v13 = MEMORY[0x277CBEAD8];
    v14 = *MEMORY[0x277CBE660];
    v15 = @"Limit must be nonzero";
    goto LABEL_9;
  }

  value = a4.value;
  if (!a4.value || (period = a4.period, v6 = a4.period, a4.period <= 0.0))
  {
    v13 = MEMORY[0x277CBEAD8];
    v14 = *MEMORY[0x277CBE660];
    v15 = @"Rate is invalid";
LABEL_9:
    v16 = [v13 exceptionWithName:v14 reason:v15 userInfo:0];
    objc_exception_throw(v16);
  }

  v17.receiver = self;
  v17.super_class = HMFOperationBudget;
  v8 = [(HMFOperationBudget *)&v17 init];
  v9 = v8;
  if (v8)
  {
    v8->_limit = a3;
    v8->_value = a3;
    v8->_rate.value = value;
    v8->_rate.period = period;
    v10 = [[HMFTimer alloc] initWithTimeInterval:5 options:v6];
    timer = v9->_timer;
    v9->_timer = v10;

    [(HMFTimer *)v9->_timer setDelegate:v9];
  }

  return v9;
}

- (unint64_t)value
{
  os_unfair_recursive_lock_lock_with_options();
  value = self->_value;
  os_unfair_recursive_lock_unlock();
  return value;
}

- (BOOL)isFull
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_value == self->_limit;
  os_unfair_recursive_lock_unlock();
  return v3;
}

- (BOOL)isEmpty
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_value == 0;
  os_unfair_recursive_lock_unlock();
  return v3;
}

- (void)reset
{
  os_unfair_recursive_lock_lock_with_options();
  if (self->_value != self->_limit)
  {
    [(HMFTimer *)self->_timer suspend];
    __updateValue(self, self->_limit);
  }

  os_unfair_recursive_lock_unlock();
}

- (BOOL)decrementByCount:(unint64_t)a3
{
  v30 = *MEMORY[0x277D85DE8];
  os_unfair_recursive_lock_lock_with_options();
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier(v6);
    v26 = 138543618;
    v27 = v8;
    v28 = 2048;
    v29 = a3;
    _os_log_impl(&dword_22ADEC000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Decrementing by %tu", &v26, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  value = v6->_value;
  if (value < a3)
  {
    v20 = objc_autoreleasePoolPush();
    v21 = v6;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      v23 = HMFGetLogIdentifier(v21);
      v26 = 138543362;
      v27 = v23;
      _os_log_impl(&dword_22ADEC000, v22, OS_LOG_TYPE_DEBUG, "%{public}@Cannot decrement, not enough budget", &v26, 0xCu);
    }

    objc_autoreleasePoolPop(v20);
  }

  else
  {
    v10 = [(HMFOperationBudget *)v6 isFull];
    __updateValue(v6, v6->_value - a3);
    if (v10)
    {
      v11 = objc_autoreleasePoolPush();
      v12 = v6;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v14 = HMFGetLogIdentifier(v12);
        v26 = 138543362;
        v27 = v14;
        _os_log_impl(&dword_22ADEC000, v13, OS_LOG_TYPE_DEBUG, "%{public}@Starting timer", &v26, 0xCu);
      }

      objc_autoreleasePoolPop(v11);
      [v12[2] resume];
    }

    v15 = objc_autoreleasePoolPush();
    v16 = v6;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v18 = HMFGetLogIdentifier(v16);
      v19 = v6->_value;
      v26 = 138543618;
      v27 = v18;
      v28 = 2048;
      v29 = v19;
      _os_log_impl(&dword_22ADEC000, v17, OS_LOG_TYPE_DEBUG, "%{public}@Successfully decremented to: %tu", &v26, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
  }

  os_unfair_recursive_lock_unlock();
  v24 = *MEMORY[0x277D85DE8];
  return value >= a3;
}

uint64_t __33__HMFOperationBudget_logCategory__block_invoke()
{
  qword_280AFC2E0 = HMFCreateOSLogHandle(@"OperationBudget", @"com.apple.HMFoundation");

  return MEMORY[0x2821F96F8]();
}

- (void)timerDidFire:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_recursive_lock_lock_with_options();
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier(v6);
    v20 = 138543362;
    v21 = v8;
    _os_log_impl(&dword_22ADEC000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Incrementing", &v20, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = v6->_rate.value + v6->_value;
  if (v9 >= v6->_limit)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = v6;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = HMFGetLogIdentifier(v11);
      v20 = 138543362;
      v21 = v13;
      _os_log_impl(&dword_22ADEC000, v12, OS_LOG_TYPE_DEBUG, "%{public}@Stopping timer", &v20, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    [v11[2] suspend];
    __updateValue(v11, v6->_limit);
  }

  else
  {
    __updateValue(v6, v9);
    v6->_value += v6->_rate.value;
  }

  v14 = objc_autoreleasePoolPush();
  v15 = v6;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v17 = HMFGetLogIdentifier(v15);
    value = v6->_value;
    v20 = 138543618;
    v21 = v17;
    v22 = 2048;
    v23 = value;
    _os_log_impl(&dword_22ADEC000, v16, OS_LOG_TYPE_DEBUG, "%{public}@Incremented to: %tu", &v20, 0x16u);
  }

  objc_autoreleasePoolPop(v14);
  os_unfair_recursive_lock_unlock();

  v19 = *MEMORY[0x277D85DE8];
}

- (_HMFRate)rate
{
  p_rate = &self->_rate;
  value = self->_rate.value;
  period = p_rate->period;
  result.period = period;
  result.value = value;
  return result;
}

@end