@interface HMFKeyValueBlockObserver
+ (id)logCategory;
- (BOOL)__invalidate;
- (HMFKeyValueBlockObserver)init;
- (HMFKeyValueBlockObserver)initWithKeyPath:(id)path object:(id)object options:(unint64_t)options;
- (id)handler;
- (id)observedObject;
- (void)dealloc;
- (void)invalidate;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setHandler:(id)handler;
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

- (HMFKeyValueBlockObserver)initWithKeyPath:(id)path object:(id)object options:(unint64_t)options
{
  pathCopy = path;
  objectCopy = object;
  if (!pathCopy)
  {
    _HMFPreconditionFailure(@"keyPath");
  }

  if (!objectCopy)
  {
    _HMFPreconditionFailure(@"object");
  }

  v10 = objectCopy;
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
    v15 = [pathCopy copy];
    keyPath = v14->_keyPath;
    v14->_keyPath = v15;

    objc_storeWeak(&v14->_observedObject, v10);
    v14->_options = options;
    v14->_valid = 1;
  }

  return v14;
}

- (void)dealloc
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = HMFGetLogIdentifier(selfCopy);
    *buf = 138543362;
    v10 = v6;
    _os_log_impl(&dword_22ADEC000, v5, OS_LOG_TYPE_DEBUG, "%{public}@Deallocating", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  [(HMFKeyValueBlockObserver *)selfCopy __invalidate];
  v8.receiver = selfCopy;
  v8.super_class = HMFKeyValueBlockObserver;
  [(HMFKeyValueBlockObserver *)&v8 dealloc];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)invalidate
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier(selfCopy);
    v13 = 138543362;
    v14 = v6;
    _os_log_impl(&dword_22ADEC000, v5, OS_LOG_TYPE_INFO, "%{public}@Invalidating", &v13, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  os_unfair_lock_lock_with_options();
  __invalidate = [(HMFKeyValueBlockObserver *)selfCopy __invalidate];
  os_unfair_lock_unlock(&selfCopy->_lock);
  if (__invalidate)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = selfCopy;
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

- (void)setHandler:(id)handler
{
  v26 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  os_unfair_lock_lock_with_options();
  v5 = handlerCopy == 0;
  if (handlerCopy && !self->_valid)
  {
    os_unfair_lock_unlock(&self->_lock);
    v23 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"Cannot set a handler on an invalidated observer." userInfo:0];
    objc_exception_throw(v23);
  }

  if (self->_handler != handlerCopy)
  {
    v6 = _Block_copy(handlerCopy);
    handler = self->_handler;
    self->_handler = v6;

    observing = self->_observing;
    if (handlerCopy)
    {
      if (!self->_observing)
      {
        v9 = 1;
LABEL_8:
        v10 = handlerCopy != 0;
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
  observedObject = [(HMFKeyValueBlockObserver *)self observedObject];
  if (observedObject)
  {
    if (v10)
    {
      v12 = objc_autoreleasePoolPush();
      selfCopy = self;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = HMFGetLogIdentifier(selfCopy);
        v24 = 138543362;
        v25 = v15;
        _os_log_impl(&dword_22ADEC000, v14, OS_LOG_TYPE_INFO, "%{public}@Registering", &v24, 0xCu);
      }

      objc_autoreleasePoolPop(v12);
      keyPath = [(HMFKeyValueBlockObserver *)selfCopy keyPath];
      options = [(HMFKeyValueBlockObserver *)selfCopy options];
      [observedObject addObserver:selfCopy forKeyPath:keyPath options:options context:HMFKeyValueBlockObserverContext];
LABEL_19:

      goto LABEL_20;
    }

    if (v5)
    {
      v18 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = HMFGetLogIdentifier(selfCopy2);
        v24 = 138543362;
        v25 = v21;
        _os_log_impl(&dword_22ADEC000, v20, OS_LOG_TYPE_INFO, "%{public}@Unregistering", &v24, 0xCu);
      }

      objc_autoreleasePoolPop(v18);
      keyPath = [(HMFKeyValueBlockObserver *)selfCopy2 keyPath];
      [observedObject removeObserver:selfCopy2 forKeyPath:keyPath context:HMFKeyValueBlockObserverContext];
      goto LABEL_19;
    }
  }

LABEL_20:

  v22 = *MEMORY[0x277D85DE8];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v25 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (HMFKeyValueBlockObserverContext == context)
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v16 = HMFGetLogIdentifier(selfCopy);
      *buf = 138543618;
      v22 = v16;
      v23 = 2112;
      v24 = changeCopy;
      _os_log_impl(&dword_22ADEC000, v15, OS_LOG_TYPE_DEBUG, "%{public}@Received change: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    if ([pathCopy isEqualToString:selfCopy->_keyPath])
    {
      handler = [(HMFKeyValueBlockObserver *)selfCopy handler];
      v18 = handler;
      if (handler)
      {
        (*(handler + 16))(handler, objectCopy, changeCopy);
      }
    }
  }

  else
  {
    v20.receiver = self;
    v20.super_class = HMFKeyValueBlockObserver;
    [(HMFKeyValueBlockObserver *)&v20 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
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