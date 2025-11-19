@interface HMFKeyValueBlockObserver
+ (id)logCategory;
- (BOOL)__invalidate;
- (HMFKeyValueBlockObserver)init;
- (HMFKeyValueBlockObserver)initWithKeyPath:(id)a3 object:(id)a4 options:(unint64_t)a5;
- (id)handler;
- (id)observedObject;
- (void)dealloc;
- (void)invalidate;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setHandler:(id)a3;
@end

@implementation HMFKeyValueBlockObserver

- (HMFKeyValueBlockObserver)init
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

- (HMFKeyValueBlockObserver)initWithKeyPath:(id)a3 object:(id)a4 options:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    _HMFPreconditionFailure(@"keyPath");
  }

  if (!v9)
  {
    _HMFPreconditionFailure(@"object");
  }

  v10 = v9;
  objc_opt_class();
  v11 = objc_opt_isKindOfClass() & 1;
  if (v11)
  {
    v12 = v10;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  if (!v11)
  {
    v18 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"The observed object must be an NSObject." userInfo:0];
    objc_exception_throw(v18);
  }

  v19.receiver = self;
  v19.super_class = HMFKeyValueBlockObserver;
  v14 = [(HMFKeyValueBlockObserver *)&v19 init];
  if (v14)
  {
    v15 = [v8 copy];
    keyPath = v14->_keyPath;
    v14->_keyPath = v15;

    objc_storeWeak(&v14->_observedObject, v10);
    v14->_options = a5;
    v14->_valid = 1;
  }

  return v14;
}

- (void)dealloc
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = HMFGetLogIdentifier(v4);
    *buf = 138543362;
    v10 = v6;
    _os_log_impl(&dword_22ADEC000, v5, OS_LOG_TYPE_DEBUG, "%{public}@Deallocating", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  [(HMFKeyValueBlockObserver *)v4 __invalidate];
  v8.receiver = v4;
  v8.super_class = HMFKeyValueBlockObserver;
  [(HMFKeyValueBlockObserver *)&v8 dealloc];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)invalidate
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier(v4);
    v13 = 138543362;
    v14 = v6;
    _os_log_impl(&dword_22ADEC000, v5, OS_LOG_TYPE_INFO, "%{public}@Invalidating", &v13, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  os_unfair_lock_lock_with_options();
  v7 = [(HMFKeyValueBlockObserver *)v4 __invalidate];
  os_unfair_lock_unlock(&v4->_lock);
  if (v7)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = v4;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = HMFGetLogIdentifier(v9);
      v13 = 138543362;
      v14 = v11;
      _os_log_impl(&dword_22ADEC000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Invalidated", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)__invalidate
{
  valid = self->_valid;
  if (valid)
  {
    handler = self->_handler;
    self->_handler = 0;

    self->_valid = 0;
  }

  if (self->_observing)
  {
    self->_observing = 0;
    WeakRetained = objc_loadWeakRetained(&self->_observedObject);
    [WeakRetained removeObserver:self forKeyPath:self->_keyPath context:HMFKeyValueBlockObserverContext];
  }

  return valid;
}

- (id)handler
{
  os_unfair_lock_lock_with_options();
  v3 = _Block_copy(self->_handler);
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setHandler:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock_with_options();
  v5 = v4 == 0;
  if (v4 && !self->_valid)
  {
    os_unfair_lock_unlock(&self->_lock);
    v23 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"Cannot set a handler on an invalidated observer." userInfo:0];
    objc_exception_throw(v23);
  }

  if (self->_handler != v4)
  {
    v6 = _Block_copy(v4);
    handler = self->_handler;
    self->_handler = v6;

    observing = self->_observing;
    if (v4)
    {
      if (!self->_observing)
      {
        v9 = 1;
LABEL_8:
        v10 = v4 != 0;
        self->_observing = v9;
        goto LABEL_10;
      }
    }

    else
    {
      v9 = 0;
      if (self->_observing)
      {
        goto LABEL_8;
      }
    }
  }

  v5 = 0;
  v10 = 0;
LABEL_10:
  os_unfair_lock_unlock(&self->_lock);
  v11 = [(HMFKeyValueBlockObserver *)self observedObject];
  if (v11)
  {
    if (v10)
    {
      v12 = objc_autoreleasePoolPush();
      v13 = self;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = HMFGetLogIdentifier(v13);
        v24 = 138543362;
        v25 = v15;
        _os_log_impl(&dword_22ADEC000, v14, OS_LOG_TYPE_INFO, "%{public}@Registering", &v24, 0xCu);
      }

      objc_autoreleasePoolPop(v12);
      v16 = [(HMFKeyValueBlockObserver *)v13 keyPath];
      v17 = [(HMFKeyValueBlockObserver *)v13 options];
      [v11 addObserver:v13 forKeyPath:v16 options:v17 context:HMFKeyValueBlockObserverContext];
LABEL_19:

      goto LABEL_20;
    }

    if (v5)
    {
      v18 = objc_autoreleasePoolPush();
      v19 = self;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = HMFGetLogIdentifier(v19);
        v24 = 138543362;
        v25 = v21;
        _os_log_impl(&dword_22ADEC000, v20, OS_LOG_TYPE_INFO, "%{public}@Unregistering", &v24, 0xCu);
      }

      objc_autoreleasePoolPop(v18);
      v16 = [(HMFKeyValueBlockObserver *)v19 keyPath];
      [v11 removeObserver:v19 forKeyPath:v16 context:HMFKeyValueBlockObserverContext];
      goto LABEL_19;
    }
  }

LABEL_20:

  v22 = *MEMORY[0x277D85DE8];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v25 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (HMFKeyValueBlockObserverContext == a6)
  {
    v13 = objc_autoreleasePoolPush();
    v14 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v16 = HMFGetLogIdentifier(v14);
      *buf = 138543618;
      v22 = v16;
      v23 = 2112;
      v24 = v12;
      _os_log_impl(&dword_22ADEC000, v15, OS_LOG_TYPE_DEBUG, "%{public}@Received change: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    if ([v10 isEqualToString:v14->_keyPath])
    {
      v17 = [(HMFKeyValueBlockObserver *)v14 handler];
      v18 = v17;
      if (v17)
      {
        (*(v17 + 16))(v17, v11, v12);
      }
    }
  }

  else
  {
    v20.receiver = self;
    v20.super_class = HMFKeyValueBlockObserver;
    [(HMFKeyValueBlockObserver *)&v20 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }

  v19 = *MEMORY[0x277D85DE8];
}

+ (id)logCategory
{
  if (_MergedGlobals_3_18 != -1)
  {
    dispatch_once(&_MergedGlobals_3_18, &__block_literal_global_50);
  }

  v3 = qword_280AFC480;

  return v3;
}

uint64_t __39__HMFKeyValueBlockObserver_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle(@"KVO.observer", @"com.apple.HMFoundation");
  v1 = qword_280AFC480;
  qword_280AFC480 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (id)observedObject
{
  WeakRetained = objc_loadWeakRetained(&self->_observedObject);

  return WeakRetained;
}

@end