@interface HMFLocationAuthorization
+ (BOOL)automaticallyNotifiesObserversForKey:(id)a3;
+ (id)logCategory;
+ (id)sharedAuthorization;
- (BOOL)isMonitoring;
- (HMFLocationAuthorization)init;
- (HMFLocationAuthorization)initWithBundle:(id)a3;
- (HMFLocationAuthorization)initWithBundleIdentifier:(id)a3;
- (HMFLocationAuthorization)initWithScheduler:(id)a3;
- (OS_dispatch_queue)queue;
- (id)attributeDescriptions;
- (id)logIdentifier;
- (int)status;
- (void)_mark;
- (void)_requestAuthorization:(int64_t)a3 completionHandler:(id)a4;
- (void)dealloc;
- (void)locationManagerDidChangeAuthorization:(id)a3;
- (void)locationOperationCompleted;
- (void)mark;
- (void)registerObserver:(id)a3;
- (void)requestAuthorization:(int64_t)a3 completionHandler:(id)a4;
- (void)setQueue:(id)a3;
- (void)unregisterObserver:(id)a3;
@end

@implementation HMFLocationAuthorization

+ (id)sharedAuthorization
{
  if (_MergedGlobals_3_0 != -1)
  {
    dispatch_once(&_MergedGlobals_3_0, &__block_literal_global_10);
  }

  v3 = qword_280AFC2C0;

  return v3;
}

uint64_t __47__HMFLocationAuthorization_sharedAuthorization__block_invoke()
{
  qword_280AFC2C0 = objc_alloc_init(HMFLocationAuthorization);

  return MEMORY[0x2821F96F8]();
}

- (HMFLocationAuthorization)init
{
  v5.receiver = self;
  v5.super_class = HMFLocationAuthorization;
  v2 = [(HMFLocationAuthorization *)&v5 init];
  v3 = v2;
  if (v2)
  {
    __HMFLocationAuthorizationInitialize(v2);
  }

  return v3;
}

+ (BOOL)automaticallyNotifiesObserversForKey:(id)a3
{
  v8[4] = *MEMORY[0x277D85DE8];
  v8[0] = @"isAuthorized";
  v8[1] = @"authorized";
  v8[2] = @"isMonitoring";
  v8[3] = @"monitoring";
  v3 = MEMORY[0x277CBEA60];
  v4 = a3;
  v5 = [v3 arrayWithObjects:v8 count:4];
  LOBYTE(v3) = [v5 containsObject:v4];

  v6 = *MEMORY[0x277D85DE8];
  return v3 ^ 1;
}

- (HMFLocationAuthorization)initWithScheduler:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    _HMFPreconditionFailure(@"scheduler");
  }

  v6 = v5;
  v10.receiver = self;
  v10.super_class = HMFLocationAuthorization;
  v7 = [(HMFLocationAuthorization *)&v10 init];
  v8 = v7;
  if (v7)
  {
    __HMFLocationAuthorizationInitialize(v7);
    objc_storeStrong(&v8->_scheduler, a3);
  }

  return v8;
}

- (HMFLocationAuthorization)initWithBundleIdentifier:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    _HMFPreconditionFailure(@"bundleIdentifier");
  }

  v5 = v4;
  v10.receiver = self;
  v10.super_class = HMFLocationAuthorization;
  v6 = [(HMFLocationAuthorization *)&v10 init];
  if (v6)
  {
    v7 = [v5 copy];
    bundleIdentifier = v6->_bundleIdentifier;
    v6->_bundleIdentifier = v7;

    __HMFLocationAuthorizationInitialize(v6);
  }

  return v6;
}

- (HMFLocationAuthorization)initWithBundle:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    _HMFPreconditionFailure(@"bundle");
  }

  v5 = v4;
  v10.receiver = self;
  v10.super_class = HMFLocationAuthorization;
  v6 = [(HMFLocationAuthorization *)&v10 init];
  if (v6)
  {
    v7 = [v5 bundlePath];
    bundlePath = v6->_bundlePath;
    v6->_bundlePath = v7;

    __HMFLocationAuthorizationInitialize(v6);
  }

  return v6;
}

- (void)dealloc
{
  __HMFLocationAuthorizationStopMonitoring(self);
  v3.receiver = self;
  v3.super_class = HMFLocationAuthorization;
  [(HMFLocationAuthorization *)&v3 dealloc];
}

- (id)attributeDescriptions
{
  v12[2] = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  v3 = [HMFAttributeDescription alloc];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:self->_state];
  v5 = [(HMFAttributeDescription *)v3 initWithName:@"State" value:v4];
  v12[0] = v5;
  v6 = [HMFAttributeDescription alloc];
  v7 = [MEMORY[0x277CCABB0] numberWithInt:self->_status];
  v8 = [(HMFAttributeDescription *)v6 initWithName:@"Status" value:v7];
  v12[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];

  os_unfair_lock_unlock(&self->_lock.lock);
  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (OS_dispatch_queue)queue
{
  os_unfair_lock_lock_with_options();
  v3 = self->_queue;
  os_unfair_lock_unlock(&self->_lock.lock);

  return v3;
}

- (void)setQueue:(id)a3
{
  obj = a3;
  os_unfair_lock_lock_with_options();
  if (self->_state >= 1)
  {
    v5 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"Cannot set queue once the location authorization has started." userInfo:0];
    objc_exception_throw(v5);
  }

  v4 = obj;
  if (!obj)
  {
    v4 = __HMFLocationAuthorizationCreateQueue(&self->super.super);
  }

  objc_storeStrong(&self->_queue, v4);
  if (!obj)
  {
  }

  os_unfair_lock_unlock(&self->_lock.lock);
}

- (int)status
{
  os_unfair_lock_lock_with_options();
  if (self->_state)
  {
    status = self->_status;
  }

  else
  {
    v4 = self;
    if (CoreLocationLibraryCore())
    {
      if (v4->_bundleIdentifier)
      {
        v5 = [getCLLocationManagerClass() authorizationStatusForBundleIdentifier:v4->_bundleIdentifier];
      }

      else
      {
        bundlePath = v4->_bundlePath;
        CLLocationManagerClass = getCLLocationManagerClass();
        if (bundlePath)
        {
          v5 = [CLLocationManagerClass authorizationStatusForBundlePath:v4->_bundlePath];
        }

        else
        {
          v5 = [CLLocationManagerClass authorizationStatus];
        }
      }

      status = v5;
    }

    else
    {
      status = 0;
    }

    v4->_status = status;
  }

  os_unfair_lock_unlock(&self->_lock.lock);
  return status;
}

- (BOOL)isMonitoring
{
  os_unfair_lock_lock_with_options();
  v3 = self->_state == 2;
  os_unfair_lock_unlock(&self->_lock.lock);
  return v3;
}

- (void)registerObserver:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = HMFGetLogIdentifier(v6);
      *buf = 138543618;
      *&buf[4] = v8;
      *&buf[12] = 2112;
      *&buf[14] = v4;
      _os_log_impl(&dword_22ADEC000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Registering location authorization observer: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v9 = [[HMFObjectObserver alloc] initWithObservedObject:v4];
    os_unfair_lock_lock_with_options();
    if (([(NSMutableSet *)v6->_observers containsObject:v9]& 1) == 0)
    {
      objc_initWeak(&location, v6);
      objc_initWeak(&from, v9);
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __45__HMFLocationAuthorization_registerObserver___block_invoke;
      v17[3] = &unk_2786E71B8;
      objc_copyWeak(&v18, &location);
      objc_copyWeak(&v19, &from);
      [(HMFObjectObserver *)v9 setDeallocationBlock:v17];
      [(NSMutableSet *)v6->_observers addObject:v9];
      v10 = v6;
      if (!v10->_state)
      {
        context = objc_autoreleasePoolPush();
        v11 = v10;
        v12 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v13 = HMFGetLogIdentifier(v11);
          *buf = 138543362;
          *&buf[4] = v13;
          _os_log_impl(&dword_22ADEC000, v12, OS_LOG_TYPE_INFO, "%{public}@Starting to monitor location authorization", buf, 0xCu);
        }

        objc_autoreleasePoolPop(context);
        v11->_state = 1;
        if (CoreLocationLibraryCore())
        {
          queue = v11->_queue;
          *buf = MEMORY[0x277D85DD0];
          *&buf[8] = 3221225472;
          *&buf[16] = ____HMFLocationAuthorizationStartMonitoring_block_invoke;
          v23 = &unk_2786E6C80;
          v24 = v11;
          dispatch_async(queue, buf);
        }
      }

      objc_destroyWeak(&v19);
      objc_destroyWeak(&v18);
      objc_destroyWeak(&from);
      objc_destroyWeak(&location);
    }

    os_unfair_lock_unlock(&v6->_lock.lock);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __45__HMFLocationAuthorization_registerObserver___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = v3;
  if (WeakRetained && v3)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = WeakRetained;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = HMFGetLogIdentifier(v6);
      *buf = 138543618;
      v14 = v8;
      v15 = 2112;
      v16 = v4;
      _os_log_impl(&dword_22ADEC000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Observer deallocated, stopping monitoring for observer: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    os_unfair_lock_lock_with_options();
    [*(v6 + 5) removeObject:v4];
    if ([*(v6 + 5) hmf_isEmpty])
    {
      v9 = *(v6 + 8);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __45__HMFLocationAuthorization_registerObserver___block_invoke_54;
      block[3] = &unk_2786E6CA8;
      objc_copyWeak(&v12, (a1 + 32));
      dispatch_async(v9, block);
      objc_destroyWeak(&v12);
    }

    os_unfair_lock_unlock(v6 + 2);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __45__HMFLocationAuthorization_registerObserver___block_invoke_54(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    __HMFLocationAuthorizationStopMonitoring(WeakRetained);
    WeakRetained = v2;
  }
}

- (void)unregisterObserver:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = HMFGetLogIdentifier(v6);
      *buf = 138543618;
      v25 = v8;
      v26 = 2112;
      v27 = v4;
      _os_log_impl(&dword_22ADEC000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Unregistering location authorization observer: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    os_unfair_lock_lock_with_options();
    observers = v6->_observers;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __47__HMFLocationAuthorization_unregisterObserver___block_invoke;
    v21[3] = &unk_2786E71E0;
    v22 = v4;
    [(NSMutableSet *)observers objectsPassingTest:v21];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v10 = v18 = 0u;
    v11 = [v10 countByEnumeratingWithState:&v17 objects:v23 count:16];
    if (v11)
    {
      v12 = *v18;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v10);
          }

          [(NSMutableSet *)v6->_observers removeObject:*(*(&v17 + 1) + 8 * i)];
        }

        v11 = [v10 countByEnumeratingWithState:&v17 objects:v23 count:16];
      }

      while (v11);
    }

    if ([(NSMutableSet *)v6->_observers hmf_isEmpty])
    {
      queue = v6->_queue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __47__HMFLocationAuthorization_unregisterObserver___block_invoke_2;
      block[3] = &unk_2786E6C80;
      block[4] = v6;
      dispatch_async(queue, block);
    }

    os_unfair_lock_unlock(&v6->_lock.lock);
  }

  v15 = *MEMORY[0x277D85DE8];
}

BOOL __47__HMFLocationAuthorization_unregisterObserver___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 observedObject];
  v4 = v3 == *(a1 + 32);

  return v4;
}

- (void)requestAuthorization:(int64_t)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = [(HMFLocationAuthorization *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__HMFLocationAuthorization_requestAuthorization_completionHandler___block_invoke;
  block[3] = &unk_2786E7208;
  v10 = v6;
  v11 = a3;
  block[4] = self;
  v8 = v6;
  dispatch_async(v7, block);
}

- (void)_requestAuthorization:(int64_t)a3 completionHandler:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(HMFLocationAuthorization *)self queue];
  dispatch_assert_queue_V2(v7);

  if (CoreLocationLibraryCore())
  {
    if (self->_request)
    {
      v8 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:9 reason:@"Location authorization in progress"];
      if (v8)
      {
        v9 = objc_autoreleasePoolPush();
        v10 = self;
        v11 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = HMFGetLogIdentifier(v10);
          *buf = 138543618;
          v29 = v12;
          v30 = 2112;
          v31 = v8;
          _os_log_impl(&dword_22ADEC000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to request authorization with error: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v9);
        if (v6)
        {
          v6[2](v6, v8);
        }
      }
    }

    else
    {
      v17 = [[__HMFLocationAuthorizationRequest alloc] initWithType:a3 authorization:self];
      [(HMFOperation *)v17 setQualityOfService:17];
      objc_initWeak(buf, self);
      objc_initWeak(&location, v17);
      v20 = MEMORY[0x277D85DD0];
      v21 = 3221225472;
      v22 = __68__HMFLocationAuthorization__requestAuthorization_completionHandler___block_invoke;
      v23 = &unk_2786E7230;
      objc_copyWeak(&v25, buf);
      v24 = v6;
      objc_copyWeak(&v26, &location);
      [(__HMFLocationAuthorizationRequest *)v17 setCompletionBlock:&v20];
      objc_storeStrong(&self->_request, v17);
      v18 = [(HMFScheduler *)self->_scheduler performOperation:v17, v20, v21, v22, v23];
      objc_destroyWeak(&v26);

      objc_destroyWeak(&v25);
      objc_destroyWeak(&location);
      objc_destroyWeak(buf);

      v8 = 0;
    }

    goto LABEL_13;
  }

  v13 = objc_autoreleasePoolPush();
  v14 = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v16 = HMFGetLogIdentifier(v14);
    *buf = 138543362;
    v29 = v16;
    _os_log_impl(&dword_22ADEC000, v15, OS_LOG_TYPE_ERROR, "%{public}@Location support not available, unable to request authorization", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v13);
  if (v6)
  {
    v8 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:5 reason:@"CoreLocation not available"];
    v6[2](v6, v8);
LABEL_13:
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __68__HMFLocationAuthorization__requestAuthorization_completionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (*(a1 + 32))
  {
    v3 = objc_loadWeakRetained((a1 + 48));
    v4 = v3;
    if (v3)
    {
      [v3 error];
    }

    else
    {
      [MEMORY[0x277CCA9B8] hmfErrorWithCode:11];
    }
    v5 = ;
    (*(*(a1 + 32) + 16))();
  }

  if (WeakRetained)
  {
    v6 = [WeakRetained queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __68__HMFLocationAuthorization__requestAuthorization_completionHandler___block_invoke_2;
    block[3] = &unk_2786E6CA8;
    objc_copyWeak(&v8, (a1 + 40));
    dispatch_async(v6, block);

    objc_destroyWeak(&v8);
  }
}

void __68__HMFLocationAuthorization__requestAuthorization_completionHandler___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[6] unregisterFromKVO];
    v2 = v3[6];
    v3[6] = 0;

    WeakRetained = v3;
  }
}

- (void)locationOperationCompleted
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = HMFGetLogIdentifier(v4);
    *buf = 138543362;
    v11 = v6;
    _os_log_impl(&dword_22ADEC000, v5, OS_LOG_TYPE_DEBUG, "%{public}@completing location authorization mark", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [(HMFLocationAuthorization *)v4 queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__HMFLocationAuthorization_locationOperationCompleted__block_invoke;
  block[3] = &unk_2786E6C80;
  block[4] = v4;
  dispatch_async(v7, block);

  v8 = *MEMORY[0x277D85DE8];
}

void __54__HMFLocationAuthorization_locationOperationCompleted__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 56) unregisterFromKVO];
  v2 = *(a1 + 32);
  v3 = *(v2 + 56);
  *(v2 + 56) = 0;
}

- (void)mark
{
  v3 = [(HMFLocationAuthorization *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__HMFLocationAuthorization_mark__block_invoke;
  block[3] = &unk_2786E6C80;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)_mark
{
  v3 = [(HMFLocationAuthorization *)self queue];
  dispatch_assert_queue_V2(v3);

  if (!self->_operation)
  {
    v4 = [(__HMFLocationManagerOperation *)[__HMFLocationAuthorizationMarkOperation alloc] initWithAuthorization:self];
    operation = self->_operation;
    self->_operation = v4;

    [(HMFOperation *)self->_operation setQualityOfService:17];
    objc_initWeak(&location, self);
    v7 = MEMORY[0x277D85DD0];
    v8 = 3221225472;
    v9 = __33__HMFLocationAuthorization__mark__block_invoke;
    v10 = &unk_2786E6CA8;
    objc_copyWeak(&v11, &location);
    [(__HMFLocationAuthorizationMarkOperation *)self->_operation setCompletionBlock:&v7];
    v6 = [(HMFScheduler *)self->_scheduler performOperation:self->_operation, v7, v8, v9, v10];
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

void __33__HMFLocationAuthorization__mark__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained locationOperationCompleted];
}

- (void)locationManagerDidChangeAuthorization:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 authorizationStatus];
  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier(v7);
    v23 = 138543618;
    v24 = v9;
    v25 = 1024;
    LODWORD(v26) = v5;
    _os_log_impl(&dword_22ADEC000, v8, OS_LOG_TYPE_INFO, "%{public}@Received notification of authorization status changing to %d", &v23, 0x12u);
  }

  objc_autoreleasePoolPop(v6);
  v10 = v7;
  v11 = v10;
  if (v10)
  {
    [(HMFLocationAuthorization *)v10 willChangeValueForKey:@"isAuthorized"];
    v12 = v5 - 3;
    os_unfair_lock_lock_with_options();
    os_unfair_lock_opaque = v11[6]._os_unfair_lock_opaque;
    if (os_unfair_lock_opaque != v5)
    {
      v11[6]._os_unfair_lock_opaque = v5;
    }

    v14 = (v12 < 2) ^ (os_unfair_lock_opaque - 3 < 2);
    v15 = *&v11[8]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(v11 + 2);
    [(os_unfair_lock_s *)v11 didChangeValueForKey:@"isAuthorized"];
    if (v15 == 1)
    {
      __HMFLocationAuthorizationUpdateState(v11, 2);
    }

    if (v14)
    {
      v16 = objc_autoreleasePoolPush();
      v17 = v11;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        v19 = HMFGetLogIdentifier(v17);
        v20 = HMFBooleanToString(v12 < 2);
        v23 = 138543618;
        v24 = v19;
        v25 = 2112;
        v26 = v20;
        _os_log_impl(&dword_22ADEC000, v18, OS_LOG_TYPE_DEBUG, "%{public}@Posting authorization updated notification with isAuthorized: %@", &v23, 0x16u);
      }

      objc_autoreleasePoolPop(v16);
      v21 = +[HMFNotificationCenter defaultCenter];
      [v21 postNotificationName:@"HMFLocationAuthorizationUpdatedNotification" object:v17];
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

+ (id)logCategory
{
  if (qword_280AFC2C8 != -1)
  {
    dispatch_once(&qword_280AFC2C8, &__block_literal_global_66);
  }

  v3 = qword_280AFC2D0;

  return v3;
}

uint64_t __39__HMFLocationAuthorization_logCategory__block_invoke()
{
  qword_280AFC2D0 = HMFCreateOSLogHandle(@"Location.Authorization", @"com.apple.HMFoundation");

  return MEMORY[0x2821F96F8]();
}

- (id)logIdentifier
{
  bundleIdentifier = self->_bundleIdentifier;
  if (bundleIdentifier || (bundleIdentifier = self->_bundlePath) != 0)
  {
    v3 = bundleIdentifier;
  }

  else
  {
    v5 = [MEMORY[0x277CCAC38] processInfo];
    v3 = [v5 processName];
  }

  return v3;
}

@end