@interface __HMFLocationManagerOperation
+ (BOOL)automaticallyNotifiesObserversForKey:(id)key;
+ (id)logCategory;
+ (void)initialize;
- (BOOL)isReady;
- (CLLocationManager)manager;
- (__HMFLocationManagerOperation)initWithAuthorization:(id)authorization;
- (__HMFLocationManagerOperation)initWithTimeout:(double)timeout;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)unregisterFromKVO;
@end

@implementation __HMFLocationManagerOperation

+ (void)initialize
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2050000000;
  v2 = getCLLocationManagerClass_softClass_0;
  v8 = getCLLocationManagerClass_softClass_0;
  if (!getCLLocationManagerClass_softClass_0)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __getCLLocationManagerClass_block_invoke_0;
    v4[3] = &unk_2786E7258;
    v4[4] = &v5;
    __getCLLocationManagerClass_block_invoke_0(v4);
    v2 = v6[3];
  }

  v3 = v2;
  _Block_object_dispose(&v5, 8);
}

+ (BOOL)automaticallyNotifiesObserversForKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"ready"] & 1) != 0 || (NSStringFromSelector(sel_isReady), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(keyCopy, "isEqualToString:", v5), v5, (v6))
  {
    v7 = 0;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = &OBJC_METACLASS_____HMFLocationManagerOperation;
    v7 = objc_msgSendSuper2(&v9, sel_automaticallyNotifiesObserversForKey_, keyCopy);
  }

  return v7;
}

- (__HMFLocationManagerOperation)initWithTimeout:(double)timeout
{
  v7.receiver = self;
  v7.super_class = __HMFLocationManagerOperation;
  v3 = [(HMFOperation *)&v7 initWithTimeout:timeout];
  if (v3)
  {
    v4 = +[HMFLocationAuthorization sharedAuthorization];
    authorization = v3->_authorization;
    v3->_authorization = v4;

    __HMFLocationManagerOperationStartMonitoring(v3);
  }

  return v3;
}

- (__HMFLocationManagerOperation)initWithAuthorization:(id)authorization
{
  authorizationCopy = authorization;
  if (!authorizationCopy)
  {
    _HMFPreconditionFailure(@"authorization");
  }

  v6 = authorizationCopy;
  v10.receiver = self;
  v10.super_class = __HMFLocationManagerOperation;
  v7 = [(HMFOperation *)&v10 initWithTimeout:0.0];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_authorization, authorization);
    __HMFLocationManagerOperationStartMonitoring(v8);
  }

  return v8;
}

- (void)dealloc
{
  [(__HMFLocationManagerOperation *)self unregisterFromKVO];
  v3.receiver = self;
  v3.super_class = __HMFLocationManagerOperation;
  [(__HMFLocationManagerOperation *)&v3 dealloc];
}

- (void)unregisterFromKVO
{
  os_unfair_lock_lock_with_options();
  if (self->_registeredForKVO)
  {
    self->_registeredForKVO = 0;
    os_unfair_lock_unlock(&self->_lock);
    authorization = self->_authorization;
    v4 = NSStringFromSelector(sel_isMonitoring);
    [(HMFLocationAuthorization *)authorization removeObserver:self forKeyPath:v4 context:HMFLocationManagerOperationMonitoringContext];
  }

  else
  {

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (CLLocationManager)manager
{
  os_unfair_lock_lock_with_options();
  v3 = self->_manager;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (BOOL)isReady
{
  os_unfair_lock_lock_with_options();
  ready = self->_ready;
  os_unfair_lock_unlock(&self->_lock);
  result = 0;
  if (ready)
  {
    v5.receiver = self;
    v5.super_class = __HMFLocationManagerOperation;
    return [(__HMFLocationManagerOperation *)&v5 isReady];
  }

  return result;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v27 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (HMFLocationManagerOperationMonitoringContext == context)
  {
    authorization = [(__HMFLocationManagerOperation *)self authorization];
    v14 = authorization;
    if (authorization == objectCopy)
    {
      if ([authorization isMonitoring])
      {
        v15 = objc_autoreleasePoolPush();
        selfCopy = self;
        v17 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          v18 = HMFGetLogIdentifier(selfCopy);
          *buf = 138543362;
          v26 = v18;
          _os_log_impl(&dword_22ADEC000, v17, OS_LOG_TYPE_DEBUG, "%{public}@Marking as ready", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v15);
        v19 = NSStringFromSelector(sel_isReady);
        [(__HMFLocationManagerOperation *)selfCopy willChangeValueForKey:v19];

        os_unfair_lock_lock_with_options();
        selfCopy->_ready = 1;
        internal = [v14 internal];
        manager = selfCopy->_manager;
        selfCopy->_manager = internal;

        os_unfair_lock_unlock(&selfCopy->_lock);
        v22 = NSStringFromSelector(sel_isReady);
        [(__HMFLocationManagerOperation *)selfCopy didChangeValueForKey:v22];
      }
    }

    else
    {
    }
  }

  else
  {
    v24.receiver = self;
    v24.super_class = __HMFLocationManagerOperation;
    [(__HMFLocationManagerOperation *)&v24 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }

  v23 = *MEMORY[0x277D85DE8];
}

+ (id)logCategory
{
  if (_MergedGlobals_3_16 != -1)
  {
    dispatch_once(&_MergedGlobals_3_16, &__block_literal_global_47);
  }

  v3 = qword_280AFC460;

  return v3;
}

@end