@interface __HMFLocationManagerOperation
+ (BOOL)automaticallyNotifiesObserversForKey:(id)a3;
+ (id)logCategory;
+ (void)initialize;
- (BOOL)isReady;
- (CLLocationManager)manager;
- (__HMFLocationManagerOperation)initWithAuthorization:(id)a3;
- (__HMFLocationManagerOperation)initWithTimeout:(double)a3;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
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

+ (BOOL)automaticallyNotifiesObserversForKey:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"ready"] & 1) != 0 || (NSStringFromSelector(sel_isReady), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v4, "isEqualToString:", v5), v5, (v6))
  {
    v7 = 0;
  }

  else
  {
    v9.receiver = a1;
    v9.super_class = &OBJC_METACLASS_____HMFLocationManagerOperation;
    v7 = objc_msgSendSuper2(&v9, sel_automaticallyNotifiesObserversForKey_, v4);
  }

  return v7;
}

- (__HMFLocationManagerOperation)initWithTimeout:(double)a3
{
  v7.receiver = self;
  v7.super_class = __HMFLocationManagerOperation;
  v3 = [(HMFOperation *)&v7 initWithTimeout:a3];
  if (v3)
  {
    v4 = +[HMFLocationAuthorization sharedAuthorization];
    authorization = v3->_authorization;
    v3->_authorization = v4;

    __HMFLocationManagerOperationStartMonitoring(v3);
  }

  return v3;
}

- (__HMFLocationManagerOperation)initWithAuthorization:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    _HMFPreconditionFailure(@"authorization");
  }

  v6 = v5;
  v10.receiver = self;
  v10.super_class = __HMFLocationManagerOperation;
  v7 = [(HMFOperation *)&v10 initWithTimeout:0.0];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_authorization, a3);
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

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v27 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (HMFLocationManagerOperationMonitoringContext == a6)
  {
    v13 = [(__HMFLocationManagerOperation *)self authorization];
    v14 = v13;
    if (v13 == v11)
    {
      if ([v13 isMonitoring])
      {
        v15 = objc_autoreleasePoolPush();
        v16 = self;
        v17 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          v18 = HMFGetLogIdentifier(v16);
          *buf = 138543362;
          v26 = v18;
          _os_log_impl(&dword_22ADEC000, v17, OS_LOG_TYPE_DEBUG, "%{public}@Marking as ready", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v15);
        v19 = NSStringFromSelector(sel_isReady);
        [(__HMFLocationManagerOperation *)v16 willChangeValueForKey:v19];

        os_unfair_lock_lock_with_options();
        v16->_ready = 1;
        v20 = [v14 internal];
        manager = v16->_manager;
        v16->_manager = v20;

        os_unfair_lock_unlock(&v16->_lock);
        v22 = NSStringFromSelector(sel_isReady);
        [(__HMFLocationManagerOperation *)v16 didChangeValueForKey:v22];
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
    [(__HMFLocationManagerOperation *)&v24 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
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