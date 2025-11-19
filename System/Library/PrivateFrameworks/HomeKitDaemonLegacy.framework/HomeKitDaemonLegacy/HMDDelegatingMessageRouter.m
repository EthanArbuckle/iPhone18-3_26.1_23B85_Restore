@interface HMDDelegatingMessageRouter
+ (id)logCategory;
- (HMDDelegatingMessageRouter)initWithMessageDispatcher:(id)a3 routers:(id)a4;
- (HMDDelegatingMessageRouterDataSource)dataSource;
- (void)routeMessage:(id)a3 allowRemoteRelayFromPrimary:(BOOL)a4 localHandler:(id)a5;
@end

@implementation HMDDelegatingMessageRouter

- (HMDDelegatingMessageRouterDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (void)routeMessage:(id)a3 allowRemoteRelayFromPrimary:(BOOL)a4 localHandler:(id)a5
{
  v18 = a4;
  v24 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = [(HMDDelegatingMessageRouter *)self routers];
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v19 + 1) + 8 * v13);
        v15 = [(HMDDelegatingMessageRouter *)self dataSource];
        v16 = [v15 router:self shouldHandleMessage:v7 usingRouter:v14];

        if (v16)
        {
          [v14 routeMessage:v7 allowRemoteRelayFromPrimary:v18 localHandler:v8];

          goto LABEL_11;
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v8[2](v8, v7);
LABEL_11:

  v17 = *MEMORY[0x277D85DE8];
}

- (HMDDelegatingMessageRouter)initWithMessageDispatcher:(id)a3 routers:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = HMDDelegatingMessageRouter;
  v9 = [(HMDDelegatingMessageRouter *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_messageDispatcher, a3);
    v11 = [v8 copy];
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