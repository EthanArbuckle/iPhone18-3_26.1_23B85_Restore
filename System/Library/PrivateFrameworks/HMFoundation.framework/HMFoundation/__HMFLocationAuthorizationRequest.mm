@interface __HMFLocationAuthorizationRequest
+ (id)logCategory;
- (__HMFLocationAuthorizationRequest)initWithAuthorization:(id)a3;
- (__HMFLocationAuthorizationRequest)initWithTimeout:(double)a3;
- (__HMFLocationAuthorizationRequest)initWithType:(int64_t)a3;
- (__HMFLocationAuthorizationRequest)initWithType:(int64_t)a3 authorization:(id)a4;
- (void)dealloc;
- (void)main;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)unregisterFromKVO;
@end

@implementation __HMFLocationAuthorizationRequest

- (__HMFLocationAuthorizationRequest)initWithTimeout:(double)a3
{
  v4.receiver = self;
  v4.super_class = __HMFLocationAuthorizationRequest;
  result = [(__HMFLocationManagerOperation *)&v4 initWithTimeout:a3];
  if (result)
  {
    result->_type = 2;
  }

  return result;
}

- (__HMFLocationAuthorizationRequest)initWithAuthorization:(id)a3
{
  v4.receiver = self;
  v4.super_class = __HMFLocationAuthorizationRequest;
  result = [(__HMFLocationManagerOperation *)&v4 initWithAuthorization:a3];
  if (result)
  {
    result->_type = 2;
  }

  return result;
}

- (__HMFLocationAuthorizationRequest)initWithType:(int64_t)a3
{
  v5 = +[HMFLocationAuthorization sharedAuthorization];
  v6 = [(__HMFLocationAuthorizationRequest *)self initWithType:a3 authorization:v5];

  return v6;
}

- (__HMFLocationAuthorizationRequest)initWithType:(int64_t)a3 authorization:(id)a4
{
  v6 = a4;
  if (!v6)
  {
    _HMFPreconditionFailure(@"authorization");
  }

  v7 = v6;
  v11.receiver = self;
  v11.super_class = __HMFLocationAuthorizationRequest;
  v8 = [(__HMFLocationManagerOperation *)&v11 initWithAuthorization:v6];
  v9 = v8;
  if (v8)
  {
    v8->_type = a3;
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
    v3 = [(__HMFLocationManagerOperation *)self authorization];
    v4 = NSStringFromSelector(sel_isAuthorized);
    [v3 removeObserver:self forKeyPath:v4 context:HMFLocationAuthorizationRequestAuthorizedContext];
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)main
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [(__HMFLocationManagerOperation *)self authorization];
  v4 = NSStringFromSelector(sel_isAuthorized);
  [v3 addObserver:self forKeyPath:v4 options:0 context:HMFLocationAuthorizationRequestAuthorizedContext];

  os_unfair_lock_lock_with_options();
  self->_registeredForKVO = 1;
  os_unfair_lock_unlock(&self->_lock);
  v5 = [(__HMFLocationManagerOperation *)self authorization];
  v6 = [v5 status];

  if (__HMFLocationAuthorizationHandleAuthorizationStatus(self, v6))
  {
    v7 = [(__HMFLocationManagerOperation *)self manager];
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    v11 = v10;
    if (v7)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v12 = HMFGetLogIdentifier(v9);
        v21 = 138543362;
        v22 = v12;
        _os_log_impl(&dword_22ADEC000, v11, OS_LOG_TYPE_INFO, "%{public}@Requesting authorization", &v21, 0xCu);
      }

      objc_autoreleasePoolPop(v8);
      type = v9->_type;
      if (type == 2)
      {
        [v7 requestWhenInUseAuthorization];
      }

      else if (type == 1)
      {
        [v7 requestAlwaysAuthorization];
      }

      v9->_requested = 1;
    }

    else
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v18 = HMFGetLogIdentifier(v9);
        v21 = 138543362;
        v22 = v18;
        _os_log_impl(&dword_22ADEC000, v11, OS_LOG_TYPE_ERROR, "%{public}@Missing internal location manager", &v21, 0xCu);
      }

      objc_autoreleasePoolPop(v8);
      v19 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:11 reason:@"Unexpected internal state."];
      [(HMFOperation *)v9 cancelWithError:v19];
    }
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v17 = HMFGetLogIdentifier(v15);
      v21 = 138543362;
      v22 = v17;
      _os_log_impl(&dword_22ADEC000, v16, OS_LOG_TYPE_DEBUG, "%{public}@Unable to request authorization", &v21, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a4;
  if (HMFLocationAuthorizationRequestAuthorizedContext == a6)
  {
    if ([(HMFOperation *)self isExecuting])
    {
      v11 = [(__HMFLocationManagerOperation *)self authorization];
      v12 = v11;
      if (v11 == v10)
      {
        v13 = [(HMFOperation *)self underlyingQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __84____HMFLocationAuthorizationRequest_observeValueForKeyPath_ofObject_change_context___block_invoke;
        block[3] = &unk_2786E6D18;
        block[4] = self;
        v17 = v12;
        v14 = v12;
        dispatch_async(v13, block);
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
    [(__HMFLocationManagerOperation *)&v15 observeValueForKeyPath:a3 ofObject:v10 change:a5 context:a6];
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