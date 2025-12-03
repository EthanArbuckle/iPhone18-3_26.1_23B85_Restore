@interface HMMTRControllerWrapper
+ (id)logCategory;
+ (id)shortDescription;
- (HMMTRControllerFactory)factory;
- (HMMTRControllerWrapper)initWithWorkQueue:(id)queue factory:(id)factory startupParams:(id)params name:(id)name entityIdentifier:(id)identifier;
- (MTRDeviceController)controller;
- (id)attributeDescriptions;
- (id)logIdentifier;
- (id)privateDescription;
- (void)_revokeAvailable:(BOOL)available;
- (void)deregisterRevokeHandlersWithQueue:(id)queue;
- (void)registerRevokeHandlerWithQueue:(id)queue handler:(id)handler;
- (void)remove;
- (void)replaceStartupParams:(id)params;
- (void)resume;
- (void)shutdown;
- (void)suspend;
- (void)suspendOrShutdown;
@end

@implementation HMMTRControllerWrapper

- (HMMTRControllerFactory)factory
{
  WeakRetained = objc_loadWeakRetained(&self->_factory);

  return WeakRetained;
}

- (id)logIdentifier
{
  v3 = MEMORY[0x277CCACA8];
  name = [(HMMTRControllerWrapper *)self name];
  v5 = [v3 stringWithFormat:@"%@/%p", name, self];

  return v5;
}

- (id)attributeDescriptions
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  name = [(HMMTRControllerWrapper *)self name];
  v5 = [v3 initWithName:@"Name" value:name];
  v9[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)privateDescription
{
  v3 = MEMORY[0x277CCACA8];
  shortDescription = [objc_opt_class() shortDescription];
  name = [(HMMTRControllerWrapper *)self name];
  v6 = [v3 stringWithFormat:@"%@ %@", shortDescription, name];

  return v6;
}

- (void)_revokeAvailable:(BOOL)available
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = [(HMMTRControllerWrapper *)self revokeHandlers];
  v5 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        queue = [v9 queue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __43__HMMTRControllerWrapper__revokeAvailable___block_invoke;
        block[3] = &unk_2786F0418;
        block[4] = v9;
        block[5] = self;
        availableCopy = available;
        dispatch_async(queue, block);
      }

      v6 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __43__HMMTRControllerWrapper__revokeAvailable___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) handler];
  v3 = v2[2](v2, *(a1 + 40), *(a1 + 48));

  if ((v3 & 1) == 0)
  {
    v4 = [*(a1 + 40) workQueue];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __43__HMMTRControllerWrapper__revokeAvailable___block_invoke_2;
    v5[3] = &unk_2786EF328;
    v6 = vextq_s8(*(a1 + 32), *(a1 + 32), 8uLL);
    dispatch_async(v4, v5);
  }
}

void __43__HMMTRControllerWrapper__revokeAvailable___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) revokeHandlers];
  [v2 removeObject:*(a1 + 40)];
}

- (HMMTRControllerWrapper)initWithWorkQueue:(id)queue factory:(id)factory startupParams:(id)params name:(id)name entityIdentifier:(id)identifier
{
  queueCopy = queue;
  factoryCopy = factory;
  paramsCopy = params;
  nameCopy = name;
  identifierCopy = identifier;
  v25.receiver = self;
  v25.super_class = HMMTRControllerWrapper;
  v18 = [(HMMTRControllerWrapper *)&v25 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_workQueue, queue);
    objc_storeWeak(&v19->_factory, factoryCopy);
    v20 = [paramsCopy copy];
    startupParams = v19->_startupParams;
    v19->_startupParams = v20;

    objc_storeStrong(&v19->_name, name);
    objc_storeStrong(&v19->_entityIdentifier, identifier);
    array = [MEMORY[0x277CBEB18] array];
    revokeHandlers = v19->_revokeHandlers;
    v19->_revokeHandlers = array;
  }

  return v19;
}

- (void)deregisterRevokeHandlersWithQueue:(id)queue
{
  queueCopy = queue;
  workQueue = [(HMMTRControllerWrapper *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__HMMTRControllerWrapper_deregisterRevokeHandlersWithQueue___block_invoke;
  v7[3] = &unk_2786EF328;
  v7[4] = self;
  v8 = queueCopy;
  v6 = queueCopy;
  dispatch_async(workQueue, v7);
}

void __60__HMMTRControllerWrapper_deregisterRevokeHandlersWithQueue___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) revokeHandlers];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __60__HMMTRControllerWrapper_deregisterRevokeHandlersWithQueue___block_invoke_2;
  v5[3] = &unk_2786EDE60;
  v6 = *(a1 + 40);
  v3 = [v2 indexesOfObjectsPassingTest:v5];

  v4 = [*(a1 + 32) revokeHandlers];
  [v4 removeObjectsAtIndexes:v3];
}

BOOL __60__HMMTRControllerWrapper_deregisterRevokeHandlersWithQueue___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 queue];
  v4 = v3 == *(a1 + 32);

  return v4;
}

- (void)registerRevokeHandlerWithQueue:(id)queue handler:(id)handler
{
  queueCopy = queue;
  handlerCopy = handler;
  workQueue = [(HMMTRControllerWrapper *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__HMMTRControllerWrapper_registerRevokeHandlerWithQueue_handler___block_invoke;
  block[3] = &unk_2786F0EA8;
  v12 = queueCopy;
  v13 = handlerCopy;
  block[4] = self;
  v9 = queueCopy;
  v10 = handlerCopy;
  dispatch_async(workQueue, block);
}

void __65__HMMTRControllerWrapper_registerRevokeHandlerWithQueue_handler___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) revokeHandlers];
  v2 = [[HMMTRControllerWrapperRevokeHandlerInfo alloc] initWithHandler:*(a1 + 48) queue:*(a1 + 40)];
  [v3 addObject:v2];
}

- (void)shutdown
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v11 = v6;
    _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_INFO, "%{public}@Shutting down", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  workQueue = [(HMMTRControllerWrapper *)selfCopy workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__HMMTRControllerWrapper_shutdown__block_invoke;
  block[3] = &unk_2786F0CA8;
  block[4] = selfCopy;
  dispatch_async(workQueue, block);

  v8 = *MEMORY[0x277D85DE8];
}

void __34__HMMTRControllerWrapper_shutdown__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) cachedDeviceController];
  v3 = [v2 controllerNodeID];

  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v13 = 138543618;
    v14 = v7;
    v15 = 2112;
    v16 = v3;
    _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_INFO, "%{public}@Shutting down Matter controller with Node ID %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [*(a1 + 32) factory];
  v9 = [v8 mtrPluginDeviceControllerRegistry];
  v10 = [*(a1 + 32) cachedDeviceController];
  [v9 removeDeviceController:v10];

  v11 = [*(a1 + 32) cachedDeviceController];
  [v11 shutdown];

  [*(a1 + 32) setCachedDeviceController:0];
  [*(a1 + 32) _revokeAvailable:0];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)suspend
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v11 = v6;
    _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_INFO, "%{public}@Suspending stack", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  workQueue = [(HMMTRControllerWrapper *)selfCopy workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__HMMTRControllerWrapper_suspend__block_invoke;
  block[3] = &unk_2786F0CA8;
  block[4] = selfCopy;
  dispatch_async(workQueue, block);

  v8 = *MEMORY[0x277D85DE8];
}

void __33__HMMTRControllerWrapper_suspend__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) cachedDeviceController];
  v3 = [v2 controllerNodeID];

  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v7;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_INFO, "%{public}@Suspending Matter controller with Node ID %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  [*(a1 + 32) _revokeAvailable:0];
  [*(a1 + 32) setDidSendRevokeAvailableOnResume:0];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)suspendOrShutdown
{
  if ((isFeatureMatterRVCEnabled() & 1) == 0)
  {

    [(HMMTRControllerWrapper *)self shutdown];
  }
}

- (void)resume
{
  if (isFeatureMatterRVCEnabled())
  {
    workQueue = [(HMMTRControllerWrapper *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __32__HMMTRControllerWrapper_resume__block_invoke;
    block[3] = &unk_2786F0CA8;
    block[4] = self;
    dispatch_async(workQueue, block);
  }
}

void __32__HMMTRControllerWrapper_resume__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (([*(a1 + 32) didSendRevokeAvailableOnResume] & 1) == 0)
  {
    [*(a1 + 32) setDidSendRevokeAvailableOnResume:1];
    v2 = [*(a1 + 32) cachedDeviceController];
    v3 = [v2 controllerNodeID];

    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v9 = 138543618;
      v10 = v7;
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_INFO, "%{public}@Resuming Matter controller with Node ID %@", &v9, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 32) _revokeAvailable:1];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)replaceStartupParams:(id)params
{
  v18 = *MEMORY[0x277D85DE8];
  paramsCopy = params;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v17 = v8;
    _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Replacing startup params", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  workQueue = [(HMMTRControllerWrapper *)selfCopy workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__HMMTRControllerWrapper_replaceStartupParams___block_invoke;
  block[3] = &unk_2786EF328;
  block[4] = selfCopy;
  v15 = paramsCopy;
  v10 = paramsCopy;
  dispatch_sync(workQueue, block);

  workQueue2 = [(HMMTRControllerWrapper *)selfCopy workQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __47__HMMTRControllerWrapper_replaceStartupParams___block_invoke_90;
  v13[3] = &unk_2786F0CA8;
  v13[4] = selfCopy;
  dispatch_async(workQueue2, v13);

  v12 = *MEMORY[0x277D85DE8];
}

void __47__HMMTRControllerWrapper_replaceStartupParams___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 32) cachedDeviceController];
    v7 = [v6 controllerNodeID];
    v20 = 138543618;
    v21 = v5;
    v22 = 2112;
    v23 = v7;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@Shutting down Matter controller with Node ID %@", &v20, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v8 = [*(a1 + 32) factory];
  v9 = [v8 mtrPluginDeviceControllerRegistry];
  v10 = [*(a1 + 32) cachedDeviceController];
  [v9 removeDeviceController:v10];

  v11 = [*(a1 + 32) cachedDeviceController];
  [v11 shutdown];

  [*(a1 + 32) setCachedDeviceController:0];
  v12 = [*(a1 + 40) copy];
  v13 = *(a1 + 32);
  v14 = *(v13 + 8);
  *(v13 + 8) = v12;

  v15 = objc_autoreleasePoolPush();
  v16 = *(a1 + 32);
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = HMFGetLogIdentifier();
    v20 = 138543362;
    v21 = v18;
    _os_log_impl(&dword_22AEAE000, v17, OS_LOG_TYPE_INFO, "%{public}@Replaced startup params", &v20, 0xCu);
  }

  objc_autoreleasePoolPop(v15);
  v19 = *MEMORY[0x277D85DE8];
}

- (void)remove
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v11 = v6;
    _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_INFO, "%{public}@Removing", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  workQueue = [(HMMTRControllerWrapper *)selfCopy workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__HMMTRControllerWrapper_remove__block_invoke;
  block[3] = &unk_2786F0CA8;
  block[4] = selfCopy;
  dispatch_async(workQueue, block);

  v8 = *MEMORY[0x277D85DE8];
}

void __32__HMMTRControllerWrapper_remove__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) cachedDeviceController];
  v3 = [v2 controllerNodeID];

  v4 = [*(a1 + 32) factory];
  v5 = [v4 mtrPluginDeviceControllerRegistry];
  v6 = [*(a1 + 32) cachedDeviceController];
  [v5 removeDeviceController:v6];

  v7 = [*(a1 + 32) cachedDeviceController];
  [v7 shutdown];

  [*(a1 + 32) setCachedDeviceController:0];
  v8 = [*(a1 + 32) factory];
  [v8 _removeGetter:*(a1 + 32)];

  [*(a1 + 32) setFactory:0];
  v9 = objc_autoreleasePoolPush();
  v10 = *(a1 + 32);
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v14 = 138543618;
    v15 = v12;
    v16 = 2112;
    v17 = v3;
    _os_log_impl(&dword_22AEAE000, v11, OS_LOG_TYPE_INFO, "%{public}@Removed by Shutting down Matter controller with Node ID %@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  [*(a1 + 32) _revokeAvailable:0];

  v13 = *MEMORY[0x277D85DE8];
}

- (MTRDeviceController)controller
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = HMFGetLogIdentifier();
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v6;
    _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_DEBUG, "%{public}@Obtaining device controller", &buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  *&buf = 0;
  *(&buf + 1) = &buf;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__3457;
  v24 = __Block_byref_object_dispose__3458;
  v25 = 0;
  workQueue = [(HMMTRControllerWrapper *)selfCopy workQueue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __36__HMMTRControllerWrapper_controller__block_invoke;
  v16[3] = &unk_2786EDE38;
  v16[4] = selfCopy;
  v16[5] = &buf;
  dispatch_sync(workQueue, v16);

  v8 = objc_autoreleasePoolPush();
  v9 = selfCopy;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = HMFGetLogIdentifier();
    v12 = *(*(&buf + 1) + 40);
    *v17 = 138543618;
    v18 = v11;
    v19 = 2048;
    v20 = v12;
    _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Obtained device controller: %p", v17, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v13 = *(*(&buf + 1) + 40);
  _Block_object_dispose(&buf, 8);

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

void __36__HMMTRControllerWrapper_controller__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) cachedDeviceController];

  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [v3 cachedDeviceController];
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
    v7 = *MEMORY[0x277D85DE8];

    MEMORY[0x2821F96F8]();
  }

  else
  {
    v8 = [v3 factory];

    if (!v8)
    {
      v9 = objc_autoreleasePoolPush();
      v10 = *(a1 + 32);
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = HMFGetLogIdentifier();
        v18 = 138543362;
        v19 = v12;
        _os_log_impl(&dword_22AEAE000, v11, OS_LOG_TYPE_ERROR, "%{public}@Cannot obtain device controller after wrapper is removed", &v18, 0xCu);
      }

      objc_autoreleasePoolPop(v9);
    }

    v13 = [*(a1 + 32) factory];
    v14 = [v13 _createControllerForGetter:*(a1 + 32)];
    v15 = *(*(a1 + 40) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    v17 = *MEMORY[0x277D85DE8];
  }
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t13_3545 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t13_3545, &__block_literal_global_3546);
  }

  v3 = logCategory__hmf_once_v14_3547;

  return v3;
}

uint64_t __37__HMMTRControllerWrapper_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  logCategory__hmf_once_v14_3547 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end