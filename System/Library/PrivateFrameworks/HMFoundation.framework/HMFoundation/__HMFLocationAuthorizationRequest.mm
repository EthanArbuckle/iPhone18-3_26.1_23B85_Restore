@interface __HMFLocationAuthorizationRequest
+ (id)logCategory;
- (__HMFLocationAuthorizationRequest)initWithAuthorization:(id)authorization;
- (__HMFLocationAuthorizationRequest)initWithTimeout:(double)timeout;
- (__HMFLocationAuthorizationRequest)initWithType:(int64_t)type;
- (__HMFLocationAuthorizationRequest)initWithType:(int64_t)type authorization:(id)authorization;
- (void)dealloc;
- (void)main;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)unregisterFromKVO;
@end

@implementation __HMFLocationAuthorizationRequest

- (__HMFLocationAuthorizationRequest)initWithTimeout:(double)timeout
{
  v4.receiver = self;
  v4.super_class = __HMFLocationAuthorizationRequest;
  result = [(__HMFLocationManagerOperation *)&v4 initWithTimeout:timeout];
  if (result)
  {
    result->_type = 2;
  }

  return result;
}

- (__HMFLocationAuthorizationRequest)initWithAuthorization:(id)authorization
{
  v4.receiver = self;
  v4.super_class = __HMFLocationAuthorizationRequest;
  result = [(__HMFLocationManagerOperation *)&v4 initWithAuthorization:authorization];
  if (result)
  {
    result->_type = 2;
  }

  return result;
}

- (__HMFLocationAuthorizationRequest)initWithType:(int64_t)type
{
  v5 = +[HMFLocationAuthorization sharedAuthorization];
  v6 = [(__HMFLocationAuthorizationRequest *)self initWithType:type authorization:v5];

  return v6;
}

- (__HMFLocationAuthorizationRequest)initWithType:(int64_t)type authorization:(id)authorization
{
  authorizationCopy = authorization;
  if (!authorizationCopy)
  {
    _HMFPreconditionFailure(@"authorization");
  }

  v7 = authorizationCopy;
  v11.receiver = self;
  v11.super_class = __HMFLocationAuthorizationRequest;
  v8 = [(__HMFLocationManagerOperation *)&v11 initWithAuthorization:authorizationCopy];
  v9 = v8;
  if (v8)
  {
    v8->_type = type;
  }

  return v9;
}

- (void)dealloc
{
  [(__HMFLocationAuthorizationRequest *)self unregisterFromKVO];
  v3.receiver = self;
  v3.super_class = __HMFLocationAuthorizationRequest;
  [(__HMFLocationManagerOperation *)&v3 dealloc];
}

- (void)unregisterFromKVO
{
  v5.receiver = self;
  v5.super_class = __HMFLocationAuthorizationRequest;
  [(__HMFLocationManagerOperation *)&v5 unregisterFromKVO];
  os_unfair_lock_lock_with_options();
  if (self->_registeredForKVO)
  {
    self->_registeredForKVO = 0;
    os_unfair_lock_unlock(&self->_lock);
    authorization = [(__HMFLocationManagerOperation *)self authorization];
    v4 = NSStringFromSelector(sel_isAuthorized);
    [authorization removeObserver:self forKeyPath:v4 context:HMFLocationAuthorizationRequestAuthorizedContext];
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)main
{
  v23 = *MEMORY[0x277D85DE8];
  authorization = [(__HMFLocationManagerOperation *)self authorization];
  v4 = NSStringFromSelector(sel_isAuthorized);
  [authorization addObserver:self forKeyPath:v4 options:0 context:HMFLocationAuthorizationRequestAuthorizedContext];

  os_unfair_lock_lock_with_options();
  self->_registeredForKVO = 1;
  os_unfair_lock_unlock(&self->_lock);
  authorization2 = [(__HMFLocationManagerOperation *)self authorization];
  status = [authorization2 status];

  if (__HMFLocationAuthorizationHandleAuthorizationStatus(self, status))
  {
    manager = [(__HMFLocationManagerOperation *)self manager];
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    v11 = v10;
    if (manager)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v12 = HMFGetLogIdentifier(selfCopy);
        v21 = 138543362;
        v22 = v12;
        _os_log_impl(&dword_22ADEC000, v11, OS_LOG_TYPE_INFO, "%{public}@Requesting authorization", &v21, 0xCu);
      }

      objc_autoreleasePoolPop(v8);
      type = selfCopy->_type;
      if (type == 2)
      {
        [manager requestWhenInUseAuthorization];
      }

      else if (type == 1)
      {
        [manager requestAlwaysAuthorization];
      }

      selfCopy->_requested = 1;
    }

    else
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v18 = HMFGetLogIdentifier(selfCopy);
        v21 = 138543362;
        v22 = v18;
        _os_log_impl(&dword_22ADEC000, v11, OS_LOG_TYPE_ERROR, "%{public}@Missing internal location manager", &v21, 0xCu);
      }

      objc_autoreleasePoolPop(v8);
      v19 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:11 reason:@"Unexpected internal state."];
      [(HMFOperation *)selfCopy cancelWithError:v19];
    }
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v17 = HMFGetLogIdentifier(selfCopy2);
      v21 = 138543362;
      v22 = v17;
      _os_log_impl(&dword_22ADEC000, v16, OS_LOG_TYPE_DEBUG, "%{public}@Unable to request authorization", &v21, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  objectCopy = object;
  if (HMFLocationAuthorizationRequestAuthorizedContext == context)
  {
    if ([(HMFOperation *)self isExecuting])
    {
      authorization = [(__HMFLocationManagerOperation *)self authorization];
      v12 = authorization;
      if (authorization == objectCopy)
      {
        underlyingQueue = [(HMFOperation *)self underlyingQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __84____HMFLocationAuthorizationRequest_observeValueForKeyPath_ofObject_change_context___block_invoke;
        block[3] = &unk_2786E6D18;
        block[4] = self;
        v17 = v12;
        v14 = v12;
        dispatch_async(underlyingQueue, block);
      }

      else
      {
      }
    }
  }

  else
  {
    v15.receiver = self;
    v15.super_class = __HMFLocationAuthorizationRequest;
    [(__HMFLocationManagerOperation *)&v15 observeValueForKeyPath:path ofObject:objectCopy change:change context:context];
  }
}

+ (id)logCategory
{
  if (_MergedGlobals_3_5 != -1)
  {
    dispatch_once(&_MergedGlobals_3_5, &__block_literal_global_20);
  }

  v3 = qword_280AFC340;

  return v3;
}

@end