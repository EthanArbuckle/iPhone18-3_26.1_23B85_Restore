@interface HMDDelegatingMessageRouter
+ (id)logCategory;
- (HMDDelegatingMessageRouter)initWithMessageDispatcher:(id)dispatcher routers:(id)routers;
- (HMDDelegatingMessageRouterDataSource)dataSource;
- (void)routeMessage:(id)message allowRemoteRelayFromPrimary:(BOOL)primary localHandler:(id)handler;
@end

@implementation HMDDelegatingMessageRouter

- (HMDDelegatingMessageRouterDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (void)routeMessage:(id)message allowRemoteRelayFromPrimary:(BOOL)primary localHandler:(id)handler
{
  primaryCopy = primary;
  v24 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  handlerCopy = handler;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  routers = [(HMDDelegatingMessageRouter *)self routers];
  v10 = [routers countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    while (2)
    {
      v13 = 0;
      do
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(routers);
        }

        v14 = *(*(&v19 + 1) + 8 * v13);
        dataSource = [(HMDDelegatingMessageRouter *)self dataSource];
        v16 = [dataSource router:self shouldHandleMessage:messageCopy usingRouter:v14];

        if (v16)
        {
          [v14 routeMessage:messageCopy allowRemoteRelayFromPrimary:primaryCopy localHandler:handlerCopy];

          goto LABEL_11;
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [routers countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  handlerCopy[2](handlerCopy, messageCopy);
LABEL_11:

  v17 = *MEMORY[0x277D85DE8];
}

- (HMDDelegatingMessageRouter)initWithMessageDispatcher:(id)dispatcher routers:(id)routers
{
  dispatcherCopy = dispatcher;
  routersCopy = routers;
  v14.receiver = self;
  v14.super_class = HMDDelegatingMessageRouter;
  v9 = [(HMDDelegatingMessageRouter *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_messageDispatcher, dispatcher);
    v11 = [routersCopy copy];
    routers = v10->_routers;
    v10->_routers = v11;
  }

  return v10;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_167309 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_167309, &__block_literal_global_167310);
  }

  v3 = logCategory__hmf_once_v1_167311;

  return v3;
}

uint64_t __41__HMDDelegatingMessageRouter_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_167311;
  logCategory__hmf_once_v1_167311 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end